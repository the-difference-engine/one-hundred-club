class DonationsController < ApplicationController

  before_action :custom_authenticate_user!, except: [:new, :create]

  def index
    @q = Donation.ransack(params[:q])
    @donations = @q.result(distinct: true).includes(:member)  
   
    total = []

    @donations.each do |donation|
      total << donation.amount
    end

    @total = total.sum

  end

  def show
    @donation = Donation.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def match
    @donations = Donation.where(member_id: nil).order(created_at: :desc) 

    @matching_phone_numbers = []
    @matching_names = []
    @matching_emails = []

    @donations.each do |donation|
      Member.where(phone_number: donation.phone_number).each do |member|
        @matching_phone_numbers << member.phone_number
        @matching_names << member.last_name unless @matching_names.include?(member.last_name)
        @matching_emails << member.email
      end
    end
    render 'match.html.erb'
  end  

  def new
    @donation = Donation.new
    @token = Braintree::ClientToken.generate
  end 

  def edit
    @donation = Donation.find_by(id: params[:id])
    
    @matching_members = []

    Member.where(phone_number: @donation.phone_number).each do |member|
      @matching_members << member 
    end

    Member.where("last_name = ?", @donation.last_name).each do |member|
      @matching_members << member
    end
    
    Member.where(email: @donation.email).each do |member|
      @matching_members << member
    end

    @matching_members.uniq!
  end

  def update
    donation = Donation.find_by(id: params[:id])
    donation.update(
      member_id: params[:member_id],
      title: params[:title],
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      suffix: params[:suffix],
      address: params[:address],
      city: params[:city],
      state: params[:state],
      zip_code: params[:zip_code],
      country: params[:country],
      email: params[:email],
      phone_number: params[:phone_number],
      amount: params[:amount]
    )
    redirect_to "/donations/"
  end

  def create
    nonce_from_the_client = params[:payment_method_nonce]
    result = Braintree::Transaction.sale(
      amount: params[:amount],
      payment_method_nonce: nonce_from_the_client,
      options: {
        submit_for_settlement: true
      }
    )
    if result.success?
      puts 'success!: #{result.transaction.id}'
      @donation = Donation.create(
        title: params[:title],
        first_name: params[:first_name],
        middle_name: params[:middle_name],
        last_name: params[:last_name],
        suffix: params[:suffix],
        address: params[:address],
        city: params[:city],
        state: params[:state],
        zip_code: params[:zip_code],
        country: params[:country],
        email: params[:email],
        phone_number: params[:phone],
        amount: params[:amount],
        bt_transaction_id: result.transaction.id
      )
      if @donation.save
        redirect_to "/donations/#{@donation.id}"
      else
        render 'new.html.erb'
      end
    elsif result.transaction
      puts 'Error processing transaction:'
      puts '  code: #{result.transaction.processor_response_code}'
      puts '  text: #{result.transaction.processor_response_text}'
    end
  end

  def admin_entered_donation
    @manual_donation = Donation.new
    @manual_donation = Donation.create(
      title: params[:title],
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      suffix: params[:suffix],
      address: params[:address],
      city: params[:city],
      state: params[:state],
      zip_code: params[:zip_code],
      country: params[:country],
      email: params[:email],
      phone_number: params[:phone_number],
      amount: params[:amount]
    )
    if @manual_donation.save
      redirect_to "/donations"
    else
      flash[:warning] = 'Not submitted correctly.  Check your fields'
      render 'manual_donations.html.erb'
    end
  end
end

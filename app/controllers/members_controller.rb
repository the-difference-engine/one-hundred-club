class MembersController < ApplicationController
  before_action :custom_authenticate_user!
  def index
    @q = Member.ransack(params[:q])
    @members = @q.result(distinct: true).paginate(page: params[:page], per_page: 20)
    @all_members = @members.count
    @bronze_members = @members.where(level: 'Bronze').count
    @silver_members = @members.where(level: 'Silver').count
    @gold_members = @members.where(level: 'Gold').count
    @lifetime_members = @members.where(level: 'Lifetime').count
  end

  def new
    @token = Braintree::ClientToken.generate
    render 'new.html.erb'
  end

  def create
    member = Member.new(
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
      phone_number: params[:phone_number]
     )
    @amount = params[:amount]
    nonce_from_the_client = params[:payment_method_nonce]
    result = Braintree::Transaction.sale(
      amount: @amount,
      payment_method_nonce: nonce_from_the_client,
      options: {
        submit_for_settlement: true
      }
    )
    if result.success? && member.check_amount(@amount)
      member.save
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
        phone_number: params[:phone_number],
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
      puts 'code: #{result.transaction.processor_response_code}'
      puts 'text: #{result.transaction.processor_response_text}'
    end
  end

  def show
    @member = Member.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def edit
    @member = Member.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    member = Member.find_by(id: params[:id])
    member.update(
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
      level: params[:level]
    )
    flash[:success] = 'Member has been updated!'
    redirect_to '/members'
  end

  def admin_entered_member
    @manual_member = Member.create(
      level: params[:level],
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
      phone_number: params[:phone_number]
    )
    if @manual_member.save
      redirect_to "/members"
    else
      render 'manual_members.html.erb'
    end
  end
end

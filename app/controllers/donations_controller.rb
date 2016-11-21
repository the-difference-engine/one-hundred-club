class DonationsController < ApplicationController
  def index
    @donations = Donation.where(member_id: nil)
    @members = []
    @donations.each do |donation|
      Member.where(phone_number: donation.phone_number).each do |member|
        @members << member
      end




      # if @members.first.first != nil
      #   puts @members.first.first.first_name
      # end

      end
      puts @members
    render 'index.html.erb'

  end

  def new
    @token = Braintree::ClientToken.generate
  end

  def show
    @donation = Donation.find_by(id: params[:id])
  end

  def edit
    @donation = Donation.find_by(id: params[:id])
  end

  def update
    donation = Donation.find_by(id: params[:id])
    donation.update(
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
      amount: params[:amount]
    )
    redirect_to "/donations/#{donation.id}"
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
end

class DonationsController < ApplicationController

  def index
    @donations = Donation.all
    render 'index.html.erb'
  end

  def new
    @token = Braintree::ClientToken.generate
  end

  def create
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
      phone: params[:phone],
      amount: params[:amount]
    )
    if @donation.save
      redirect_to "/donations/#{@donation.id}"
    else
      render "new.html.erb"
    end
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
      phone: params[:phone],
      amount: params[:amount]
    )

    redirect_to "/donations/#{donation.id}"
  end

  def checkout
    nonce_from_the_client = params[:payment_method_nonce]
    puts "*******************"
    puts params
    puts "*******************"
    result = Braintree::Transaction.sale(
      :amount => params[:amount],
      :payment_method_nonce => nonce_from_the_client,
      :options => {
        :submit_for_settlement => true
      }
    )
    if result.success?
      puts "success!: #{result.transaction.id}"
    elsif result.transaction
      puts "Error processing transaction:"
      puts "  code: #{result.transaction.processor_response_code}"
      puts "  text: #{result.transaction.processor_response_text}"
    else
      p result.errors
    end
  end
end

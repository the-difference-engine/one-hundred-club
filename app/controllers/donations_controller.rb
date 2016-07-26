class DonationsController < ApplicationController
  def index
    render 'index.html.erb'
  end

  def new
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

    donation = Donation.update(
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
end

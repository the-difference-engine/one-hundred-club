class DonationsController < ApplicationController
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
      phone: params[:phone]
    )
    if @donation.save
      redirect_to "/donations/#{@donation.id}"
    else
      render "new.html.erb"
    end
  end
end

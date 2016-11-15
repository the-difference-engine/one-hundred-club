class MembersController < ApplicationController
  def index
  	@members = Member.all
  	render 'index.html.erb'
  end

  def new
  	render 'new.html.erb'
  end

  def create
  	member = Member.create(
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
  	redirect_to '/members'
  end
end

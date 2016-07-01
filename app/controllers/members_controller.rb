class MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def new
    render 'new.html.erb'
  end

  def create
    member = Member.new(
      title: params[:title],
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      suffix: params[:suffix],
      company: params[:company],
      job_title: params[:job_title],
      name_on_card: params[:name_on_card],
      other_name_1: params[:other_name_1],
      other_name_2: params[:other_name_2],
      other_name_3: params[:other_name_3],
      address: params[:address],
      city: params[:city],
      state: params[:state],
      zip_code: params[:zip_code],
      country: params[:country],
      email: params[:email],
      phone: params[:phone],
      how_they_heard: params[:how_they_heard],
      if_other: params[:if_other]
    )

    if member.save
      redirect_to "/members/#{member.id}"
    else
      render 'new.html.erb'
    end
  end

  def show
    @member = Member.find_by(id: params[:id])
    render 'show.html.erb'
  end
end

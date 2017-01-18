class SirensController < ApplicationController
  before_action :custom_authenticate_user!, except: [:index, :show]
  def index
    @sirens = Siren.first(Siren.count - 1).reverse
    render 'index.html.erb'

  end

  def new
    @siren = Siren.new
  end

  def create
    @siren = Siren.create(
      title: params[:title],
      pdf: params[:pdf]
    )
    if @siren.save
      flash[:success] = 'Siren has been added!'
      redirect_to "/sirens/#{@siren.id}"
    else
      render 'new.html.erb'
    end
  end

  def show
    @siren = Siren.find_by(id: params[:id])
    @sirens = Siren.all.reverse
    render 'show.html.erb'
  end

  def edit
    @siren = Siren.find_by(id: params[:id])
  end

  def update
    @siren = Siren.find_by(id: params[:id])
    @siren.update(
      title: params[:title],
      pdf: params[:pdf],
      remove_pdf: params[:remove_pdf]
    )
    flash[:success] = 'Siren has been updated!'
    redirect_to "/sirens/#{@siren.id}"
  end

  def destroy
    @siren = Siren.find_by(id: params[:id])
    if @siren.destroy
      redirect_to '/sirens'
    else
      redirect_to "/sirens/#{@siren.id}"
    end
  end
end

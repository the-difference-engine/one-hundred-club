class SirensController < ApplicationController
  def index
    @siren = Siren.all
  end

  def new
    @siren = Siren.new
  end

  def create
    @siren = Siren.create(
      title: params[:title],
      pdf: params[:pdf]
    )
  end
end

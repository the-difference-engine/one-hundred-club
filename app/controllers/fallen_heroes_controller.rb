class FallenHeroesController < ApplicationController
  def edit
    @fallen_hero = FallenHero.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
  end
end

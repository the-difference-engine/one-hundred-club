class FallenHeroesController < ApplicationController

  def show
    @fallen_hero = FallenHero.find(params[:id])
    render 'show.html.erb'
  end

end

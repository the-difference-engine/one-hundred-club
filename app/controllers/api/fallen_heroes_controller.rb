class Api::FallenHeroesController < ApplicationController
  def index
    @fallen_heroes = FallenHero.all
    render 'index.json.jbuilder'
  end
end

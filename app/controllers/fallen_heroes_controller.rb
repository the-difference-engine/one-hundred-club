class FallenHeroesController < ApplicationController
  def index
    @fallen_heroes = FallenHero.all 
  end
end

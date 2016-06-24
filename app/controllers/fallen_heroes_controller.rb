class FallenHeroesController < ApplicationController
  def index
    @fallen_heroes = FallenHero.all 

  def edit
    @fallen_hero = FallenHero.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    fallen_hero = FallenHero.find_by(id: params[:id])

    fallen_hero.update(
      rank: params[:rank],
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      date_deceased: params[:date_deceased],
      department: params[:department],
      description: params[:description],
      image_url: params[:image_url]
    )

    redirect_to "/fallen_heroes/#{fallen_hero.id}"
  end

  def destroy
    fallen_hero = FallenHero.find_by(id: params[:id])

    if fallen_hero.destroy
      redirect_to '/fallen_heroes'
    else 
      redirect_to "/fallen_heroes/#{fallen_hero.id}"
    end
  end
end

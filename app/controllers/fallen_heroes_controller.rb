class FallenHeroesController < ApplicationController
  
  def index
    @first_heroes = FallenHero.where("date_deceased > ?", '2009-12-31').sort_by(&:date_deceased).reverse
    @second_heroes= FallenHero.where("date_deceased": '2000-01-01'..'2009-12-31').sort_by(&:date_deceased).reverse
    @third_heroes= FallenHero.where("date_deceased": '1990-01-01'..'1999-12-31').sort_by(&:date_deceased).reverse
    @fourth_heroes= FallenHero.where("date_deceased": '1980-01-01'..'1989-12-31').sort_by(&:date_deceased).reverse
    @fifth_heroes= FallenHero.where("date_deceased": '1970-01-01'..'1979-12-31').sort_by(&:date_deceased).reverse
    @sixth_heroes= FallenHero.where("date_deceased < ?", '1970-01-01').sort_by(&:date_deceased).reverse
  end

  def new
    @fallen_hero = FallenHero.new
  end

  def create
    @fallen_hero = FallenHero.create(
      rank: params[:rank],
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      date_deceased: params[:date_deceased],
      department: params[:department],
      description: params[:description],
      image_url: params[:image_url]
    )
    if @fallen_hero.save
      redirect_to "/fallen_heroes/#{@fallen_hero.id}"
    else
      render 'new.html.erb'
    end
  end

  def show
    @fallen_hero = FallenHero.find_by(id: params[:id])
    render 'show.html.erb'
  end

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

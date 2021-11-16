class HomeController < ApplicationController
  before_action :comun, :only =>[:index, :team]
  
  def comun
    @hero_name = Faker::Superhero.name 
    @hero_power = Faker::Superhero.power 
    @corp_title = Faker::Job.title
    @corp_power = Faker::Company.bs
    @rand_number = rand(1..1000)
    
    # Obtener el set aleatoriamente
    @set_number = rand(1..4)
    if @set_number == 1
      @set = "set1"
    elsif @set_number == 2
      @set = "set2"
    elsif @set_number == 3
      @set = "set3"
    else
      @set = "set4"
    end


    # Obtener el bgset aleatoriamente
    @bgset_number = rand(1..2)
    if @bgset_number == 1
      @bgset = "bg1"
    else 
      @bgset = "bg2"
    end

    @avatar = Faker::Avatar.image(slug: @rand_number, size: "350x350", format: "png", set: @set, bgset: @bgset)
  end

  def index
  end

  def team
  end
end

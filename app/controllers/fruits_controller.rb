class FruitsController < ApplicationController
  def index
    @fruit_facade = FruitFacade.new(params[:search])
    @fruit = @fruit_facade.fruits.first
    @nutritions = @fruit.nutritions
  end

  def nutritional
    @fruit_facade = FruitFacade.new(params[:name])
    @fruit = @fruit_facade.fruits.first
    @similar_fruits = @fruit_facade.similar_fruits_by_sugar
  end
end

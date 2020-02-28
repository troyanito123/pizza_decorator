class PizzasController < ApplicationController

  include PizzasHelper

  def new
    @sizes = Size.all
    @ingredients = Ingredient.all
    @pizza = Pizza::PizzaDefault.new
    save_pizza(@pizza)
  end
end

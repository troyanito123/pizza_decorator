class PizzasController < ApplicationController

  include PizzasHelper

  def new
    @sizes = Size.all
    @ingredients = Ingredient.all
    @pizza = Pizza::PizzaDefault.new
    save_pizza(@pizza)
    save_size('small')
  end

  def add_ingredient
    @type = params['type']
    @pizza_old = current_pizza
    @pizza_act = get_ingredient(@type, @pizza_old)
    @pizza_act.set_ingredients
    pizza_add(@pizza_act)
    save_pizza(@pizza_act)
  end

  def remove_ingredient
    @type = params['type']
    @pizza_old = current_pizza
    @pizza_act = get_ingredient(@type, @pizza_old)
    @pizza_act.remove_ingredients
    pizza_remove(@pizza_act)
    save_pizza(@pizza_act)
  end

end

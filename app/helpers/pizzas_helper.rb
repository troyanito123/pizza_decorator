module PizzasHelper

  def save_pizza(pizza)
    session[:pizza] = pizza
  end

  def current_pizza
    @current_pizza = session[:pizza]
  end
end

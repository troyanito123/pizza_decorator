module PizzasHelper

  def save_pizza(pizza)
    session[:pizza] = pizza
  end

  def current_pizza
    @current_pizza = session[:pizza]
  end

  def save_size(size)
    session[:size] = size
  end

  def current_size
    @current_size = session[:size]
  end


  def get_ingredient(type, pizza)
    p = Pizza::PizzaDefault.new pizza
    case type
    when 'parmesan'
      Pizza::Parmesan.new p
    when 'pineapple'
      Pizza::Pineapple.new p
    when 'mushroom'
      Pizza::Mushroom.new p
    end
  end

  def pizza_add(pizza, size)
    case size
    when 'small'
      pizza.set_small
    when 'medium'
      pizza.set_medium
    when 'large'
      pizza.set_large
    when 'extra_large'
      pizza.set_extra_large
    end
  end

  def pizza_remove(pizza, size)
    case size
    when 'small'
      pizza.remove_small
    when 'medium'
      pizza.remove_medium
    when 'large'
      pizza.remove_large
    when 'extra_large'
      pizza.remove_extra_large
    end
  end

  def change
    pizza_new = Pizza::PizzaDefault.new
    ingredients = current_pizza['ingredients']
    p = nil
    ingredients.each do |ingredient|
      case ingredient
      when 'parmesan'
        p = Pizza::Parmesan.new pizza_new
      when 'pineapple'
        p = Pizza::Pineapple.new pizza_new
      when 'mushroom'
        p = Pizza::Mushroom.new pizza_new
      end
      p.set_ingredients

      pizza_add(p, current_size)

      p '#####'
      p pizza_new.inspect
      pizza_new = p

    end
    p
  end

end

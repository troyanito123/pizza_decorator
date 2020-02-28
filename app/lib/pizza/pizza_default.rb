module Pizza
  class PizzaDefault
    attr_accessor :cost, :ingredients, :size

    SIZES = {small: 'small', medium: 'medium', large: 'large', extra_large: 'extra_large'}

    def initialize(pizza = {})
      if pizza.length > 0
        @cost = pizza['cost']
        @ingredients = pizza['ingredients']
        @size = pizza['size']
      else
        set_size
        @ingredients = []
      end
    end

    def set_cost_base
      @base = @cost
    end

    def set_cost
      @cost = @base || 10
    end

    def set_ingredients
      @ingredients
    end

    def set_size(size = SIZES[:small], cost = 10)
      @size = size
      @cost = cost
    end

    def set_large(pppsize, cost)
      set_size(size, cost)
    end

    def set_small(size, cost)
      set_size(size, cost)
    end

    def set_medium(size, cost)
      set_size(size, cost)
    end

    def set_extra_large(size, cost)
      set_size(size, cost)
    end

    #####################

    def remove_cost
      @cost = @base || 10
    end

    def remove_ingredients
      @ingredients
    end

    def remove_size(size = SIZES[:small], cost = 10)
      @size = size
      @cost = cost
    end

    def remove_large(size, cost)
      remove_size(size, cost)
    end

    def remove_small(size, cost)
      remove_size(size, cost)
    end

    def remove_medium(size, cost)
      remove_size(size, cost)
    end

    def remove_extra_large(size, cost)
      remove_size(size, cost)
    end

  end
end
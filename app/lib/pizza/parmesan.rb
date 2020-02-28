module Pizza
  class Parmesan < PizzaDecorator

    SIZES = {small: 'small', medium: 'medium', large: 'large', extra_large: 'extra_large'}.freeze

    def set_ingredients
      super << 'parmesan'
      set_cost_base
    end

    def set_cost
      super + 3
    end

    def set_large
      super(SIZES[:large], set_cost + 12)
    end

    def set_small
      super(SIZES[:small], set_cost + 3)
    end

    def set_medium
      super(SIZES[:medium], set_cost + 7)
    end

    def set_extra_large
      super(SIZES[:extra_large], set_cost + 15)
    end

    ########################

    def remove_cost
      super - 3
    end

    def remove_ingredients
      super.delete('parmesan')
      set_cost_base
    end

    def remove_small
      super('small', remove_cost - 3)
    end

    def remove_medium
      super('medium', remove_cost - 7)
    end

    def remove_large
      super('large', remove_cost - 12)
    end

    def remove_extra_large
      super('extra_large', remove_cost - 15)
    end
  end
end
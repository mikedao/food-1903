class FoodSearchResultFacade
  def initialize(ingredient)
    @ingredient = ingredient
  end

  def number_results
    results[:total]
  end

  def foods
    results[:item].map do |food_data|
      Food.new(food_data)
    end
  end

  private

      def service
        @_service ||= FoodService.new
      end

      def results
        @_results ||= service.get_results(@ingredient)
      end

end


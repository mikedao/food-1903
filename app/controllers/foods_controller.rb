class FoodsController < ApplicationController
  def index
    render locals: {facade: FoodSearchResultFacade.new(params[:q])}
  end
end

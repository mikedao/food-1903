require "rails_helper"

RSpec.describe FoodService do
  it "gets results" do
    service = FoodService.new

    result = service.get_results("beef")

    expect(result).to have_key(:total)
    expect(result[:item].first).to have_key(:name)
    expect(result[:item].first).to have_key(:ds)
    expect(result[:item].first).to have_key(:manu)
    expect(result[:item].first).to have_key(:ndbno)
    expect(result[:item].first).to have_key(:group)
  end
end

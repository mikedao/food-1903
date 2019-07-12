class Food
  attr_reader :ndb_number,
              :name,
              :data_source,
              :food_group,
              :manufacturer

  def initialize(data)
    @ndb_number   = data[:ndbno]
    @name         = data[:name]
    @data_source  = data[:ds]
    @food_group   = data[:group]
    @manufacturer = data[:manu]
  end
end

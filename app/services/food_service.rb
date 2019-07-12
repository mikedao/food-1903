class FoodService

  def get_results(ingredient)
    get_json("search?format=json&q=#{ingredient}&sort=r&max=10")[:list]
  end

  def get_more(ingredient)
    get_json("search?format=json&q=#{ingredient}&sort=r&max=25")[:list]
  end

  private

     def get_json(url)
        response = conn.get(url)
        JSON.parse(response.body, symbolize_names: true)
     end


      def conn
        Faraday.new("https://api.nal.usda.gov/ndb") do |f|
          f.params["api_key"] = ENV["api_key"]
          f.adapter Faraday.default_adapter
        end
      end


end

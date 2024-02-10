class FruityService
  BASE_URL = "https://fruityvice.com"
  def fruit_by_name(fruit_name)
    get_url("/api/fruit/#{fruit_name}")
  end

  def all_fruits
    get_url("/api/fruit/all")
  end

  private
  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: BASE_URL)
  end
end

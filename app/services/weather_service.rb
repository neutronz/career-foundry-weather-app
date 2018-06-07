module  WeatherService
  def self.get_current(city, country, units="imperial")
    appid = ENV["WEATHER_KEY"]
    resp = Faraday.get URI.encode("http://api.openweathermap.org/data/2.5/weather?q=#{city},#{country}&APPID=#{appid}&units=#{units}")
    resp.body if JSON.parse(resp.body)["cod"].to_s == "200"
  end
end

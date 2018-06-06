module  WeatherService
  def self.get_current(city, country, units="imperial")
    appid = "20451c138a84eedf1844033e41be165b"
    resp = Faraday.get URI.encode("http://api.openweathermap.org/data/2.5/weather?q=#{city},#{country}&APPID=#{appid}&units=#{units}")
    byebug
    JSON.parse(resp.body) if resp.body
  end
end

class Weather
  include ActiveModel::Model
  attr_accessor :city, :country, :units, :now

  def initalize(city, country, units="imperial")
    @city = city
    @country = country
    @units = units
  end

  def save
    @now = WeatherService.get_current(@city, @country)
  end
end

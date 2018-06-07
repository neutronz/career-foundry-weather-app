class Weather < ApplicationRecord
  validates :city, :country, presence:{ message: "needs a value"}
  validates :now, presence: { message: -> (object, data) { "We could not find the weather for #{object.city}." }}, if: "self.city?"

  before_validation :find_current_weather
  before_save :update_weather

  def update_weather
    self.city = self.city.titleize if self.city
    self.country = self.country.upcase if self.country
  end

  def now
    JSON.parse(self["now"]) if self["now"].present?
  end

  def find_current_weather
    self.now = WeatherService.get_current(self.city, self.country) if self.now.blank? || (self.updated_at && self.updated_at < 10.minutes.ago)
  end
end

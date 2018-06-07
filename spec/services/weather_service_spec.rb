require 'rails_helper'

describe WeatherService do
  let(:city) {}
  let(:country) {}

  describe "::get_current" do
    subject { WeatherService.get_current(city, country) }

    context 'when the city and country are valid' do
      it 'returns the json from the api'
    end

    context 'when the city and country are NOT valid' do
      it 'returns nil'
    end

    context 'when the api is missing' do
      it 'raises some exception'
    end
  end
end

require 'rails_helper'

RSpec.describe "weathers/edit", type: :view do
  before(:each) do
    @weather = assign(:weather, Weather.create!())
  end

  it "renders the edit weather form" do
    render

    assert_select "form[action=?][method=?]", weather_path(@weather), "post" do
    end
  end
end

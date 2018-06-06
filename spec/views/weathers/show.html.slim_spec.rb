require 'rails_helper'

RSpec.describe "weathers/show", type: :view do
  before(:each) do
    @weather = assign(:weather, Weather.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

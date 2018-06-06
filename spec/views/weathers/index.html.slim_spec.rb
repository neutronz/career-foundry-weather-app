require 'rails_helper'

RSpec.describe "weathers/index", type: :view do
  before(:each) do
    assign(:weathers, [
      Weather.create!(),
      Weather.create!()
    ])
  end

  it "renders a list of weathers" do
    render
  end
end

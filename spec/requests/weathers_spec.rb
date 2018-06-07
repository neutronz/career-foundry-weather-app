require 'rails_helper'

RSpec.describe "Weathers", type: :request do
  describe "GET /" do
    it "returns the home page" do
      get root_path
      expect(response).to have_http_status(200)
    end
  end
end

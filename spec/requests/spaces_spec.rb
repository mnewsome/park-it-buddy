require 'rails_helper'

RSpec.describe "Spaces", :type => :request do
  describe "GET /spaces" do
    it "works! (now write some real specs)" do
      get spaces_path
      expect(response.status).to be(200)
    end
  end
end

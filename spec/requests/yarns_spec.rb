require 'rails_helper'

RSpec.describe "Yarns", type: :request do
  describe "GET /yarns" do
    it "works! (now write some real specs)" do
      get yarns_path
      expect(response).to have_http_status(200)
    end
  end
end

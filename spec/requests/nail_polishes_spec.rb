require 'rails_helper'

RSpec.describe "NailPolishes", type: :request do
  describe "GET /nail_polishes" do
    it "works! (now write some real specs)" do
      get nail_polishes_path
      expect(response).to have_http_status(200)
    end
  end
end

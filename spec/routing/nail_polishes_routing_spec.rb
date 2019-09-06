require "rails_helper"

RSpec.describe NailPolishesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/nail_polishes").to route_to("nail_polishes#index")
    end


    it "routes to #show" do
      expect(:get => "/nail_polishes/1").to route_to("nail_polishes#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/nail_polishes").to route_to("nail_polishes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/nail_polishes/1").to route_to("nail_polishes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/nail_polishes/1").to route_to("nail_polishes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/nail_polishes/1").to route_to("nail_polishes#destroy", :id => "1")
    end

  end
end

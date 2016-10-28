require "rails_helper"

RSpec.describe ReportsController, type: :routing do
  describe "routing" do

    it "routes to #root" do
      expect(:get => "/").to route_to("reports#new")
    end

    it "routes to #create" do
      expect(:post => "/reports").to route_to("reports#create")
    end

  end
end

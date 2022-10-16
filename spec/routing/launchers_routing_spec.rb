require "rails_helper"

RSpec.describe LaunchersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/launchers").to route_to("launchers#index")
    end

    it "routes to #show" do
      expect(get: "/launchers/00441721-5019-4c49-aa85-e38aad2d3937").to route_to("launchers#show", id: "00441721-5019-4c49-aa85-e38aad2d3937")
    end


    it "routes to #create" do
      expect(post: "/launchers").to route_to("launchers#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/launchers/00441721-5019-4c49-aa85-e38aad2d3937").to route_to("launchers#update", id: "00441721-5019-4c49-aa85-e38aad2d3937")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/launchers/00441721-5019-4c49-aa85-e38aad2d3937").to route_to("launchers#update", id: "00441721-5019-4c49-aa85-e38aad2d3937")
    end

    it "routes to #destroy" do
      expect(delete: "/launchers/00441721-5019-4c49-aa85-e38aad2d3937").to route_to("launchers#destroy", id: "00441721-5019-4c49-aa85-e38aad2d3937")
    end
  end
end

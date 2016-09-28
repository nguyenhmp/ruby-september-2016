require "rails_helper"
describe DojoController do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/").to route_to(:controller => "dojo", :action => "index")
    end
    it "routes to #world" do
      expect(:get => "/hello").to route_to(:controller => "dojo", :action => "world")
    end
    it "route to #ninja" do
      expect(:get => "/ninja").to route_to(:controller =>"dojo", :action => "ninja")
    end
  end
end

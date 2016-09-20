require 'rails_helper'

RSpec.describe NinjasController do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/").to route_to(:controller => "ninjas", :action => "index")
    end
    it "routes to #create" do
      expect(:post => "ninjas/create").to route_to(:controller => "ninjas", :action => "create")
    end
    it "route to #success" do
      expect(:get => "/success").to route_to(:controller =>"ninjas", :action => "success")
    end
  end

end

require 'rails_helper'

RSpec.describe NinjasController, type: :controller do

    describe "GET #index" do
        it "renders index template" do
            get :index
            expect(response).to render_template("index")
        end
    end

    describe "GET #success" do
        it "renders success template" do
            get :success
            expect(response).to render_template("success")
        end
    end

end

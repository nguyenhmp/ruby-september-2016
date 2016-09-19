require 'rails_helper'

RSpec.describe "numbers/new", type: :view do
  before(:each) do
    assign(:number, Number.new(
      :number => ""
    ))
  end

  it "renders new number form" do
    render

    assert_select "form[action=?][method=?]", numbers_path, "post" do

      assert_select "input#number_number[name=?]", "number[number]"
    end
  end
end

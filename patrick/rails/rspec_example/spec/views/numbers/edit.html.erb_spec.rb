require 'rails_helper'

RSpec.describe "numbers/edit", type: :view do
  before(:each) do
    @number = assign(:number, Number.create!(
      :number => 1
    ))
  end

  it "renders the edit number form" do
    render

    assert_select "form[action=?][method=?]", number_path(@number), "post" do

      assert_select "input#number_number[name=?]", "number[number]"
    end
  end
end

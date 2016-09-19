require 'rails_helper'

RSpec.describe "numbers/index", type: :view do
  before(:each) do
    assign(:numbers, [
      Number.create!(
        :number => ""
      ),
      Number.create!(
        :number => ""
      )
    ])
  end

  it "renders a list of numbers" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end

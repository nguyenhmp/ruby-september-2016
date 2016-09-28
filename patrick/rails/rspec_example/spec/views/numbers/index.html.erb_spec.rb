require 'rails_helper'

RSpec.describe "numbers/index", type: :view do
  before(:each) do
    assign(:numbers, [
      Number.create!(
        :number => 2
      ),
      Number.create!(
        :number => 2
      )
    ])
  end

  it "renders a list of numbers" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end

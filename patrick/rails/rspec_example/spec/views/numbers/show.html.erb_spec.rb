require 'rails_helper'

RSpec.describe "numbers/show", type: :view do
  before(:each) do
    @number = assign(:number, Number.create!(
      :number => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end

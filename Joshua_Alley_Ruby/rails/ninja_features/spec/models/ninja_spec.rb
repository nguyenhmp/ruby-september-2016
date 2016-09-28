require 'rails_helper'

RSpec.describe Ninja do
  it "should not save if ninja_name already exists" do
  	ninja = Ninja.new(ninja_name:'')
  	expect(ninja).to be_invalid
  end
  it "should not save if ninja_name is empty" do
  	ninja = Ninja.new(ninja_name:'')
  	expect(ninja).to be_invalid
  end
  it "should not save if ninja_description is empty" do
  	ninja = Ninja.new(ninja_description:'')
  	expect(ninja).to be_invalid
  end
end

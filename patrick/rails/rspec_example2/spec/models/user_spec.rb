require 'rails_helper'

RSpec.describe User, type: :model do
  it "should not save if email already exists" do
    User.create(
      first_name: "Test1",
      last_name: "User1",
      email: "email@email.com"
      )
    user = User.new(
      first_name: "Test2",
      last_name: "User2",
      email: "email@email.com"
      )
    expect(user).to be_invalid
  end
  it "should not save if first_name field is blank" do
    user = User.new(
      first_name: ''
      )
    expect(user).to be_invalid
  end
  it "must be a valid email" do
    user = User.new(
      first_name: "Test3",
      last_name: "User3",
      email: "weiuhfwieuh"
      )
    expect(user).to be_invalid
  end
end

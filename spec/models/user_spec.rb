require 'rails_helper'

describe User, "validations" do
  it "is invalid without an email" do
    group = Group.create
    user =  User.create(username: "Someone", password: "Someone123", group: group)
    expect(user).not_to be_valid
  end

  it "is invalid without a username" do
    group = Group.create
    user =  User.create(email: "someone@example.com", password: "Someone123", group: group)
    expect(user).not_to be_valid
  end
end

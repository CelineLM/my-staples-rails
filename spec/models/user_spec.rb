require 'rails_helper'

describe User, "instance variables default values" do  
  context "When user sign up" do

    it "does not have group_admin set to false " do
      user =  User.create(email: "someone@example.com", username: "Someone", password: "Someone123")
      expect(user.group_admin).to be false
    end

    it "does not have group set to nil" do
      user =  User.create(email: "someone@example.com", username: "Someone", password: "Someone123")
      expect(user.group_id).to be_nil
    end
  end
end

describe User, "validations" do
  it "is invalid without an email" do
    user =  User.create(username: "Someone", password: "Someone123")
    expect(user).not_to be_valid
  end

  it "is invalid without a username" do
    user =  User.create(email: "someone@example.com", password: "Someone123")
    expect(user).not_to be_valid
  end
end

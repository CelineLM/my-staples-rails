require 'rails_helper'

describe User, "instance variables default values" do  
  context "When user sign up" do

    it "has group_admin set to false " do
      group = Group.create(name: "group")
      user =  User.create(email: "someone@example.com", username: "Someone", password: "Someone123", group_id: group.id)
      expect(user.group_admin).to be false
      expect(user).to be_valid
    end

    it "has group set to nil" do
      user =  User.create(email: "someone@example.com", username: "Someone", password: "Someone123")
      expect(user.group_id).to be_nil
      expect(user).to be_valid
    end
  end
end

describe User, "validations" do
  it "is invalid without an email" do
    group = Group.create(name: "group")
    user =  User.create(username: "Someone", password: "Someone123", group_id: group.id)
    expect(user).not_to be_valid
  end

  it "is invalid without a username" do
    group = Group.create(name: "group")
    user =  User.create(email: "someone@example.com", password: "Someone123", group_id: group.id)
    expect(user).not_to be_valid
  end
end

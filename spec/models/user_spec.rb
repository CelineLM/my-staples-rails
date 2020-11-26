require 'rails_helper'

describe User, "instance variables specification" do

    it "should have group_admin set to false " do
      user = User.create(email: "someone@example.com", username: "Someone", password: "Someone123")
      expect(user.group_admin).to be false
    end

    it "should have group set to nil" do
      user = User.create(email: "someone@example.com", username: "Someone", password: "Someone123")
      expect(user.group).to be_nil
    end
end

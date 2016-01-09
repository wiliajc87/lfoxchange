require 'rails_helper'

RSpec.describe User, type: :model do

before :each do
    @user = User.new(name: "User1")
    @question = Question.new(title: "QuestionTitleHere", body: "QuestionBodyHere", user: @user)
    @answer = Answer.new(body: "BodyHere", user: @user, question: @question)
end

describe "#new" do
    it "takes one parameter and returns a User object" do
        expect(@user).to be_an_instance_of User
    end
end

end

require 'rails_helper'

RSpec.describe Answer, type: :model do
    before :each do
        @user = User.new(name: "User1")
        @question = Question.new(title: "QuestionTitleHere", body: "QuestionBodyHere", user: @user)
        @answer = Answer.new(body: "BodyHere", user: @user, question: @question)
    end

    describe "#new" do
        it "takes three parameters and returns an Answer object" do
            expect(@answer).to be_an_instance_of Answer
        end
    end

    describe "#body" do
        it "returns the correct body" do
            expect(@answer.body).to eq("BodyHere")
        end
    end

    describe "#user" do
        it "returns the Answer's user" do
            expect(@answer.user).to eq(@user)
        end
    end

    describe "#question" do
        it "returns the Answer's question" do
            expect(@answer.question).to eq(@question)
        end
    end
end

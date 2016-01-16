require 'rails_helper'

RSpec.describe Question, type: :model do
    before :each do
        @user = User.new(name: "User1")
        @question = Question.new(title: "TitleHere", body: "BodyHere", user: @user)
    end

    describe "#new" do
        it "takes three parameters and returns a Question object" do
            expect(@question).to be_an_instance_of Question
        end
    end

    describe "#title" do
        it "returns the correct title" do
            expect(@question.title).to eq("TitleHere")
        end
    end

    describe "#body" do
        it "returns the correct body" do
            expect(@question.body).to eq("BodyHere")
        end
    end

    describe "#user" do
        it "returns the question's user" do
            expect(@question.user).to eq(@user)
        end
    end
end

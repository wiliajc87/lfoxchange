require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do
  describe "GET index" do
    it "assigns @questions" do
      question = Question.create(title: "TitleHere", body: "BodyHere")
      get :index
      expect(assigns(:questions)).to eq([question])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET new" do
    it "assigns @question to a new Question object" do
      question = Question.new
      get :new
      expect(assigns(:question).class).to eq(question.class)
    end

    it "renders the new template" do
      get :new
      expect(response).to render_template("new")
    end
  end

  describe "GET new" do
    it "assigns @question to a new Question object" do
      question = Question.new
      get :new
      expect(assigns(:question).class).to eq(question.class)
    end

    it "renders the new template" do
      get :new
      expect(response).to render_template("new")
    end
  end


end

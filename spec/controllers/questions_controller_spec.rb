require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do
before :each do
    @user = User.create(name: "User1", password: "password")
end

  describe "GET index" do
    it "assigns @questions" do
      question = Question.create(title: "TitleHere", body: "BodyHere", user: @user)
      get :index
      expect(assigns(:questions)).to eq([question])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET show" do
    it "renders the show template" do
      question = Question.create(title: "TitleHere", body: "BodyHere", user: @user)
      get :show, id: 1
      expect(response).to render_template("show")
    end

    it "assigns @answer to prep for a new answer POST" do
      question = Question.create(title: "TitleHere", body: "BodyHere", user: @user)
      get :show, id: 1
      expect(assigns(:answer).class).to eq(Answer)
    end
  end

  describe "GET new" do
    it "assigns @question to a new Question object" do
      get :new
      expect(assigns(:question).class).to eq(Question)
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

  describe "GET edit" do
    it "assigns @question to the one in params" do
      @question = Question.create(title: "TitleHere", body: "BodyHere", user: @user)
      get :edit, id: 1
      expect(assigns(:question).id).to eq(1)
    end

  it "renders the edit template" do
      question = Question.create(title: "TitleHere", body: "BodyHere", user: @user)
      get :edit, id: 1
      expect(response).to render_template("edit")
    end
  end

  describe "POST create" do
    # it "creates a new Question out of valid params" do
    #   expect{
    #     post :create, question: {title: "TitleHere", body: "BodyHere", user_id: @user.id}
    #   }.to change(Question, :count).by(1)
    # end

    # it "renders a show page after valid creation" do
    #   post :create, question: {title: "TitleHere", body: "BodyHere", user_id: @user.id}
    #   expect(response).to redirect_to Question.last
    # end

    it "doesn't create a new Question with empty title param" do
      expect{
        post :create, question: {title: "", body: "BodyHere", user: @user}
      }.to change(Question, :count).by(0)
    end

    it "doesn't create a new Question with empty body param" do
      expect{
        post :create, question: {title: "TitleHere", body: "", user: @user}
      }.to change(Question,:count).by(0)
    end

    it "doesn't create a new Question with no user param" do
      expect{
        post :create, question: {title: "TitleHere", body: "BodyHere"}
      }.to change(Question,:count).by(0)
    end

    it "renders the new page again after invalid creation attempt" do
      post :create, question: {title: "", body: "BodyHere", user_id: @user.id}
      expect(response).to render_template("new")
    end
  end

  describe "POST update" do
    it "edits an existing question if new params are valid" do
      @question = Question.create(title: "TitleHere", body: "BodyHere", user_id: @user.id)
      post :update, id: @question, question: {title: "NewTitle", body: "NewBody", user_id: @user.id}
      expect(Question.last.title).to eq("NewTitle")
      expect(Question.last.body).to eq("NewBody")
    end

    it "renders the show page after a successful update" do
      @question = Question.create(title: "TitleHere", body: "BodyHere", user_id: @user.id)
      post :update, id: @question, question: {title: "NewTitle", body: "NewBody", user_id: @user.id}
      expect(response).to redirect_to @question
    end

    it "doesn't edit an existing question if new title is invalid" do
      @question = Question.create(title: "TitleHere", body: "BodyHere", user_id: @user.id)
      post :update, id: @question, question: {title: "", body: "BodyHere", user_id: @user.id}
      expect(Question.last.title).to eq("TitleHere")
    end

    it "doesn't edit an existing question if new title is invalid" do
      @question = Question.create(title: "TitleHere", body: "BodyHere", user_id: @user.id)
      post :update, id: @question, question: {title: "TitleHere", body: "", user_id: @user.id}
      expect(Question.last.body).to eq("BodyHere")
    end

    it "renders the edit page after an unsuccessful update" do
      @question = Question.create(title: "TitleHere", body: "BodyHere", user_id: @user.id)
      post :update, id: @question, question: {title: "NewTitle", body: "", user_id: @user.id}
      expect(response).to render_template :edit
    end
  end

  describe "POST destroy" do
    it "deletes a question" do
      @question = Question.create(title: "TitleHere", body: "BodyHere", user_id: @user.id)
      expect(Question.count).to eq(1)
      post :destroy, id: @question
      expect(Question.count).to eq(0)
    end

    it "redirects to the question index" do
      @question = Question.create(title: "TitleHere", body: "BodyHere", user_id: @user.id)
      post :destroy, id: @question
      expect(response).to redirect_to("/questions")
    end
  end
end

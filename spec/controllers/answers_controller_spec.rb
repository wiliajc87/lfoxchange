require 'rails_helper'

RSpec.describe AnswersController, type: :controller do
before :each do
    @user = User.create(name: "User1")
    @question = Question.create(title: "TitleHere", body: "BodyHere", user: @user)
end

  describe "GET edit" do
    it "assigns @answer to the one in params" do
      puts @user
      puts @question
      ans = Answer.create(body: "BodyHere", user: @user, question: @question)
      get :edit, id: 1
      expect(assigns(:answer).id).to eq(1)
    end

  it "renders the edit template" do
      Answer.create(body: "BodyHere", user: @user, question: @question)
      get :edit, id: 1
      expect(response).to render_template("edit")
    end
  end

  describe "POST create" do
    it "creates a new Answer out of valid body" do
      expect{
        post :create, answer: {body: "BodyHere", user_id: @user, question_id: @question}
      }.to change(Answer, :count).by(1)
    end

    it "renders a question#show page after valid creation" do
      post :create, answer: {body: "BodyHere", user_id: @user, question_id: @question}
      expect(response).to redirect_to @question
    end

    it "doesn't create a new Answer with empty body param" do
      expect{
        post :create, answer: {body: "", user_id: @user, question_id: @question}
      }.to change(Answer, :count).by(0)
    end

    it "doesn't create a new Answer with no question param" do
      expect{
        post :create, answer: {body: "", user: @user}
      }.to change(Answer,:count).by(0)
    end

    it "doesn't create a new Question with no user param" do
      expect{
        post :create, answer: {body: "", question_id: @question}
      }.to change(Answer,:count).by(0)
    end

    it "renders the question#show again after invalid creation attempt" do
      post :create, answer: {body: "BodyHere", user_id: @user, question_id: @question}
      expect(response).to redirect_to @question
    end
  end

  describe "POST update" do
    it "edits an existing answer if new params are valid" do
      @answer = Answer.create(body: "BodyHere", user: @user, question: @question)
      post :update, id: @answer, answer: {body: "NewBody", user: @user.id, question: @question.id}
      expect(Answer.last.body).to eq("NewBody")
    end

    it "renders the show page after a successful update" do
      @answer = Answer.create(body: "BodyHere", user: @user, question: @question)
      post :update, id: @answer, answer: {body: "NewBody", user: @user.id, question: @question.id}
      expect(response).to redirect_to @question
    end

    it "doesn't edit an existing answer if new body is invalid" do
      @answer = Answer.create(body: "BodyHere", user: @user, question: @question)
      post :update, id: @answer, answer: {body: "", user: @user.id, question: @question.id}
      expect(Answer.last.body).to eq("BodyHere")
    end

    it "renders the edit page after an unsuccessful update" do
      @answer = Answer.create(body: "BodyHere", user: @user, question: @question)
      post :update, id: @answer, answer: {body: "", user: @user.id, question: @question.id}
      expect(response).to render_template :edit
    end
  end

  describe "POST destroy" do
    it "deletes an answer" do
      @answer = Answer.create(body: "BodyHere", user: @user, question: @question)
      expect(Answer.count).to eq(1)
      post :destroy, id: @answer
      expect(Answer.count).to eq(0)
    end

    it "redirects to the question index" do
      @answer = Answer.create(body: "BodyHere", user: @user, question: @question)
      post :destroy, id: @question
      expect(response).to redirect_to @question
    end
  end
end

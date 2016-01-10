require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET index" do
    it "assigns @users" do
      @user = User.create(name: "User1", password: 'password')
      get :index
      expect(assigns(:users)).to eq([@user])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET new" do
    it "assigns @user to a new User object" do
      get :new
      expect(assigns(:user).class).to eq(User)
    end

    it "renders the new template" do
      get :new
      expect(response).to render_template("new")
    end
  end

  describe "GET edit" do
    it "assigns @user to the one in params" do
      @user = User.create(name: "User1", password: 'password')
      get :edit, id: 1
      expect(assigns(:user).id).to eq(1)
    end

  it "renders the edit template" do
      @user = User.create(name: "User1", password: 'password')
      get :edit, id: 1
      expect(response).to render_template("edit")
    end
  end

  describe "POST create" do
    it "creates a new User out of valid params" do
      expect{
        post :create, user: {name:"jordy", password:"password"}
      }.to change(User, :count).by(1)
    end

    it "renders a show page after valid creation" do
      post :create, user: {name: "User1", password: 'password'}

      expect(response).to redirect_to User.last
    end

    it "doesn't create a new User with empty name param" do
      expect{
        post :create, user: {name: ""}
      }.to change(User, :count).by(0)
    end

    it "renders the new page again after invalid creation attempt" do
      post :create, user: {name: ""}
      expect(response).to render_template("new")
    end
  end

  describe "POST destroy" do
    it "deletes a user" do
      @user = User.create(name: 'User1', password: 'password')
      expect(User.count).to eq(1)
      post :destroy, id: @user
      expect(User.count).to eq(0)
    end

    it "redirects to the question index" do
      @user = User.create(name: 'User1', password: 'password')
      post :destroy, id: @user
      expect(response).to redirect_to("/questions")
    end
  end
end

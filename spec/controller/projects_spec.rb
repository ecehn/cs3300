require "rails_helper"

#sign_in @user
#sign_in @user, scope: :admin

RSpec.describe ProjectsController, type: :controller do

  setup do 
    sign_in @user
  end
  
  context "GET #index" do
    it "returns a success response" do
      get :index
      # expect(response.success).to eq(true)
      expect(response).to be_success
    end
  end

  context "GET #show" do
    let!(:project) { Project.create(title: "Test title", description: "Test description") }
    it "returns a success response" do
      get :show, params: { id: project }
      expect(response).to be_success
    end
  end

   
end
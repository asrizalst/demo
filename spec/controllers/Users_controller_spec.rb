require 'rails_helper'

describe UsersController, :type => :controller do

  before do
    @user = User.create!(email: "peter@example.com", password: "1234567890")
  end

  describe "GET #show" do
     context "User is logged in" do
        it "loads correct user details" do
         get :show, id: @user.id
         expect(assigns(:user)).to eq @user
       end
     end

     context "No user is logged in" do
       it "redirects to login" do
         get :show, id: @user.id
         expect(response).to redirect_to(root_path)
       end
     end
  end
   
end
require 'rails_helper'

describe UsersController do

  before do
    @user = User.create(first_name: "Ionut", last_name: "Zbarnea", email: "user@gmail.com", password: "test123")
    @user2 = User.create(first_name: "John", last_name: "Smith", email: "user2@gmail.com", password: "test123")
  end

  describe 'GET #show' do
    context 'when a user is logged in' do
      before do
        sign_in @user
      end
      it 'loads correct user details' do
        get :show, params: { id: @user.id }
        expect(assigns(:user)).to eq @user
        expect(response).to have_http_status(302)
      end
      it 'cant access other users show page' do
        get :show, params: { id: @user2.id }
        expect(response).to have_http_status(302)
        expect(response).to redirect_to(root_path)
      end      
    end

    context 'when a user is not logged in' do
      it 'redirects to login' do
        get :show, params: { id: @user.id }
        expect(response).to redirect_to(new_user_session_path)
      end
    end

  end
end
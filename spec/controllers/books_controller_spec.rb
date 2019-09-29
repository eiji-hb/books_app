require 'rails_helper'

RSpec.describe BooksController, type: :controller do

  describe "GET #book" do
    it "returns http success" do
      get :book
      expect(response).to have_http_status(:success)
    end
  end

end

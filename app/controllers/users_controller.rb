class UsersController < ApplicationController
  def about
  end

  def home
  end

  def index

  end

  def show
    @user = User.find_by(id: params[:id])
  end
end

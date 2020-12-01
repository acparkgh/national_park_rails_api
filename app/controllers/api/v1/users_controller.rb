class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users.to_json
  end

  def show
    # byebug
    # @user = User.find_by(id: params[:id])
    @user = User.find_by({username: params[:username]})
    render json: @user.to_json
  end

end

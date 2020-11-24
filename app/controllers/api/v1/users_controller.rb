class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users.to_json
  end

  def show
    @user = User.find_by(id: params[:id])
    render json: @user
  end

end

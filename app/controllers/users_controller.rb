class UsersController < ApplicationController
  def index
    res = User.all
    render json: res
  end

  def show
    res = User.find(params[:id])
    render json: res
  end
end

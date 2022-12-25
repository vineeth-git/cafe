class UserCartsController < ApplicationController
  before_action :get_user, only: [:index, :create, :destroy]
  before_action :get_item, only: [:destroy]
  def index
    res = @user.user_carts.all
    render json: res
  end

  def create
    res = @user.user_carts.create(user_cart_param)
    render json: res
  end

  def user_cart_param
    params.require(:user_cart).permit(:item_id)
  end

  def get_user
    @user ||= User.find(params[:user_id])
  end

  def destroy
    res = @item.destroy
    render json: res
  end
  def get_item
    @item ||= @user.user_carts.find(params[:id])
  end
end

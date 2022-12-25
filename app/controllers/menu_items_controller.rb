class MenuItemsController < ApplicationController
  def index
    res = MenuItem.all
    render json: res
  end

  def show
    render json: MenuItem.find(params[:id])
  end
end

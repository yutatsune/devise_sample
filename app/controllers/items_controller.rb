class ItemsController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    Item.create!(name: item_params[:name], price: item_params[:price], user_id: current_user.id)
  end

  private

  def item_params
    params.require(:item).permit(:name, :price)
  end
end

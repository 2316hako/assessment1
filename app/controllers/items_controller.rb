class ItemsController < ApplicationController
  def index
    @item = Item.all
    @search = Item.ransack(params[:q])
    @items = @search.result
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.valid? 
      @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def item_params
    params.require(:item).permit(:image, :condition_id, :name, :price).merge(user_id: current_user.id)
  end


end

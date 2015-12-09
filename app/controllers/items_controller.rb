class ItemsController < ApplicationController
  before_filter :authenticate_user

  def create

    @item = items.new(item_params)
    @item.user = current_user
    @new_item = Item.new

    if @item.save
      flash[:notice] = "Item saved successfully."
    else
      flash[:error] = "Item failed to save."
    end

    respond_to do |format|
      format.html
    end
  end

  def show
    @items = Item.all
  end

  def new
    @item = Item.new

  end

  private
  def item_params
    params.require(:item).permit(:name)
  end
  def authorize_user
    item = Item.find(params[:id])
    unless current_user == comment.user || current_user.admin?
      flash[:error] = "You do not have permission to create a comment."
      redirect_to [user.item]
    end
  end
end

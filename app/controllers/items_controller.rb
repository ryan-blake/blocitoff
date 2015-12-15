class ItemsController < ApplicationController

  def create

    @item = current_user.items.build(item_params)
    @user = @item.user
    @new_item = Item.new

    if @item.save
      flash[:notice] = "Item saved successfully."
    else
      flash[:error] = "Item failed to save."
    end

    respond_to do |format|
      format.html
      format.js

    end
  end


  def destroy
    @item = Item.find(params[:id])
    @user = @item.user
  # #3

    if @item.destroy
      flash[:notice] = "Comment was deleted."
      # redirect_to [@user]
    else
      flash.now[:alert] = "Comment couldn't be deleted. Try again."
      # redirect_to [@user]
    end
  # #4
    respond_to do |format|
      format.html
      format.js
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

  def go_back
    redirect_to :back
  end
end

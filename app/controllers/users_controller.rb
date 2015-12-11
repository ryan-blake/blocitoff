class UsersController < ApplicationController

  def show

    @user = current_user
    @items = current_user.items

    @new_item = Item.new

  end
end

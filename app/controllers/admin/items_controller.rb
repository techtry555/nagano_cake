class Admin::ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to admin_items_path(@item.id)
  end

  def index
    @items  = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    # show画面でもよいのか？？
    redirect_to admin_items_path(@item.id)
  end

  private
  # ストロングパラメータ
  def item_params
    params.require(:item).permit(:name, :introduction, :price, :image) #image忘れず
  end

end

class ItemsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    before_action :admin_only, except: [:index, :show]
    before_action :find_item
    def index
        @menus = Menu.all 
        @categories = Category.all

        @items = Item.where(nil)
        @items = @items.by_menu(params[:menu]) if params[:menu].present?
        @items = @items.by_category(params[:category]) if params[:category].present?
    end

    def new
        @item = Item.new
    end

    def create
        @item = Item.new(item_params)
        if @item.save
            redirect_to item_path(@item), notice: "You've successfully created a new item!"
        else
            render :new
        end
    end

    def show

    end

    def edit
    end

    def update
        @item.update(item_params)
        if @item.save
            redirect_to item_path(@item), notice: "You've successfully updated an item!"
        else
            render :edit
        end
    end

    def destroy
        @item.destroy
        redirect_to items_path, notice: "You've successfully deleted an item!"
    end

private

    def find_item
        @item = Item.find_by(id: params[:id])
    end

    def item_params
        params.require(:item).permit(:name, :price, :menu_id, :category_id, :cart_id, :order_id, :description)
    end
end

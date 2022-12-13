class MenusController < ApplicationController
    before_action :find_menu, only: [:show, :edit, :update]
    before_action :authenticate_user!
    before_action :admin_only

    def index
        @menus = Menu.all
    end

    def new
        @menu = Menu.new
    end

    def create
        @menu = Menu.new(menu_params)
        if @menu.save
            redirect_to menu_path(@menu), notice: "You have successfully created a menu!"
        else 
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
        @menu.update(menu_params)
        if @menu.save
            redirect_to menu_path(@menu), notice: "You have successfully updated a menu!"
        else
            render :edit
        end
    end

    def destroy
        @menu.destroy
        redirect_to menus_path, notice: "You have successfully deleted a menu."
    end

private
    def find_menu
        @menu = Menu.find_by(id: params[:id])
    end

    def menu_params
        params.require(:menu).permit(:name)
    end
end

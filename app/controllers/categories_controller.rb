class CategoriesController < ApplicationController
    before_action :find_category, except: [:index]
    before_action :authenticate_user!
    before_action :admin_only
    def index
        @categories = Category.all
    end

    def new
        @category = Category.new
    end

    def create
        @category = Category.new(category_params)
        if @category.save
            redirect_to category_path(@category), notice: "You've successfully created a new category!"
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
        @category.update(category_params)
        if @category.save
            redirect_to category_path(@category), notice: "You've successfuly updated a category!"
        else
            render :edit
        end
    end

    def destroy
        @category.destroy
        redirect_to categories_path, notice: "You've successfully deleted a category."
    end

private
    def find_category
        @category = Category.find_by(id: params[:id])
    end

    def category_params
        params.require(:category).permit(:name)
    end
end

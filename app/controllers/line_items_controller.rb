class LineItemsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_line_items
    def create
        # Find associated item and current cart
        chosen_item = Item.find(params[:item_id])
        current_cart = @current_cart
    
        # If cart already has this item then find the relevant line_item and iterate quantity otherwise create a new line_item for this item
        if current_cart.items.include?(chosen_item)
            # Find the line_item with the chosen_item
            @line_item = current_cart.line_items.find_by(item_id: chosen_item)
            # Iterate the line_item's quantity by one
            @line_item.quantity += 1
        else
            @line_item = LineItem.new
            @line_item.cart = current_cart
            @line_item.item = chosen_item
        end

        # Save and redirect to cart show path
        @line_item.save
        redirect_to cart_path(current_cart)
    end

    def add_quantity
        @line_item.quantity += 1
        @line_item.save
        redirect_to cart_path(@current_cart)
    end
    
    def reduce_quantity
        if @line_item.quantity > 1
            @line_item.quantity -= 1
        elsif @line_item.quantity == 1
            @line_item.destroy
        end
        @line_item.save
        redirect_to cart_path(@current_cart)
    end

    def destroy
        @line_item.destroy
        redirect_to cart_path(@current_cart)
    end
    
    private

        def set_line_items
            @line_item = LineItem.find_by(id: params[:id])
        end

        def line_item_params
            params.require(:line_item).permit(:quantity,:item_id, :cart_id)
        end
end

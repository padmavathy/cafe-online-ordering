class ApplicationController < ActionController::Base
    before_action :current_cart
    def welcome
    end

    def admin_only
        unless current_user.admin
            redirect_to users_show_path(current_user), notice: "You must be an admin to perform that function!"
        end
    end

private
    def current_cart
        if session[:cart_id]
            cart = Cart.find_by(:id => session[:cart_id])
            if cart.present?
                @current_cart = cart
            else
            session[:cart_id] = nil
            end
        end

        if session[:cart_id] == nil
            @current_cart = Cart.create
            session[:cart_id] = @current_cart.id
        end
    end
end

module OrdersHelper


    def created_at(order)
        order.created_at.strftime("%B %e, %Y at %l:%M %p")
    end
end

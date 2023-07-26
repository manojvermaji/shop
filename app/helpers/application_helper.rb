module ApplicationHelper


  def current_order
    if !session[:order_id].nil?
      
        Order.find(session[:order_id])
    else
        Order.new
    end
  end

  # def current_order
  #   if session[:order_id].present?
  #     Order.find_by(id: session[:order_id])
  #   else
  #     Order.new
  #   end
  # end

end

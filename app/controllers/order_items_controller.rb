class OrderItemsController < ApplicationController
  before_action :authenticate_user!


  def create
    @order = current_order
    @order_item = @order.order_items.new(order_params)
    
    @order.save
    session[:order_id] = @order.id
    
    redirect_to order_items_path, notice: 'Order item was successfully created.'
   end
 
  
  
  private
  
  def order_params
    params.require(:order).permit(:product_id, :quantity)
  end
  

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update(order_params)
    @order_items = current_order.order_items
    redirect_to order_items_path, notice: 'Order item was successfully updated.'

  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = current_order.order_items
    redirect_to order_items_path, notice: 'Order item was successfully remove.'
end


  private

  def order_params
      params.require(:order_item).permit(:product_id, :quantity)
  end

end

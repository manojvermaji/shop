class ShopsController < ApplicationController
  before_action :authenticate_user!, except: [:index] 

  def index
    @product =Product.all
    @order_item = current_order.order_items.new
  end

  def show
    @product = Product.find(params[:id])
  end

  

  def about_us
  end

  
  def contact_us
  end
end

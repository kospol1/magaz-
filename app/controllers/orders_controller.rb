class OrdersController < ApplicationController
	def new
		@product = Product.find_by_id(params[:id])
		@order = Order.new(:product_id => @product.id, :user_id => current_user.id)
		@order.save
		redirect_to root_path
	end

	def index
		@orders = Order.find_by_user_id(current_user_id)
		@product = Product.where(id: @order.product_id)

		@orders = Order.where()
	end

	def delete
		@order = Order.find_by_id(params[:id])
		@order.destroy
		redirect_back(fallback_location: :back)
	end
end

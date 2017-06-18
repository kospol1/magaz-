class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @products = Product.all
    @order = Order.where(user_id: current_user.id).where(is_cart: true).count
  end

end

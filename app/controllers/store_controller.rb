class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
  	@products = Product.order(:title)
  	@time = Time.now.strftime("%I:%M %p %Z")
  	@count = increment_count
  	@shown_message = ("You've been here #{@count} times without adding any books to your cart.")
  end
  def increment_count
  	session[:counter] ||= 0
  	session[:counter] += 1
  end
end

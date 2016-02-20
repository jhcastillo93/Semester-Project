class Cart < ActiveRecord::Base
	has_many :line_items, dependent: :destroy

	def add_product(product_id)
		current_item = line_items.find_by(product_id: product_id)
		if current_item
			current_item.quantity += 1
		else
			current_item = line_items.build(product_id: product_id)
		end
		current_item
	end

	def total_price
    	line_items.to_a.sum { |item| item.total_price }
  end

	def decrease(line_item_id)
  	current_item = line_items.find(line_item_id)
  	product = Product.find(current_item.product_id)
  	product.popularity = product.popularity - 1
      product.update_attributes(:popularity => product.popularity)
  	if current_item.quantity > 1
    		current_item.quantity -= 1
  	else
    		current_item.destroy
  	end
  	current_item
	end

	def update_popularity
		line_items.each { |cart_items| 
			current_item = line_items.find(cart_items.id)
			decreaseBy = current_item.quantity
			product = Product.find(current_item.product_id)
			product.popularity = product.popularity - decreaseBy
			product.update_attributes(:popularity => product.popularity)
		}
	end

end

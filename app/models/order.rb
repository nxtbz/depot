class Order < ActiveRecord::Base
	PAYMENT_TYPES = [ "Check", "Credit card", "Purchase order" ]
	validates :name, :adress, :email, presence: true 
	validates :pay_type, inclusion: PAYMENT_TYPES 
	has_many :line_items, dependent: :destroy



	# Don't forget to set the cart_id for the item to NIL
	# otherwise it would be destroyed if you destroy the cart 
	def add_line_items_from(cart)
		cart.line_items.each do |item| 
			item.cart_id = nil 
			line_items << item 
		end
	end
end

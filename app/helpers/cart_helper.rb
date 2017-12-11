module CartHelper
  def cart_items
    current_order.total_items
  end
end

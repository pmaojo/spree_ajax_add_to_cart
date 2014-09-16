Spree::OrdersController.class_eval do
  respond_to :js
  
  # Adds a new item to the order (creating a new order if none already exists)
  def populate
    populator = Spree::OrderPopulator.new(current_order(create_order_if_necessary: true), current_currency)

    if populator.populate(params[:variant_id], params[:quantity])
      respond_to do |format|
        format.js
        format.html { redirect_to cart_path }
      end
    else
      flash[:error] = populator.errors.full_messages.join(" ")
      redirect_to :back
    end
  end
end

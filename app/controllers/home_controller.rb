# frozen_string_literal: true

class HomeController < AuthenticatedController
  def index
    @shop = ShopifyAPI::Shop.current
    # @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    
    @webhooks = ShopifyAPI::Webhook.find(:all)
  end

  def orders 
    @orders = ShopifyAPI::Order.find(:all, params: { limit: 10 })
  end 

  def products 
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
  end 

  def webhooks
    @webhooks = ShopifyAPI::Webhook.find(:all)
  end 


  def failure 
    flash[:error] = params[:message] || "Invalid permissions"
    redirect_to root_path
  end 
end

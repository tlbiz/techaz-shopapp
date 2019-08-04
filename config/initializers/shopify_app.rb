ShopifyApp.configure do |config|
  config.application_name = "TechAZ ShopApp"
  config.api_key = ENV['SHOPIFY_API_KEY']
  config.secret = ENV['SHOPIFY_API_SECRET']
  config.old_secret = ""
  config.scope = "read_content, write_content,read_themes, write_themes,read_products, write_products,read_product_listings,read_customers, write_customers,read_orders,write_orders,read_draft_orders, write_draft_orders,read_inventory, write_inventory,read_locations,read_script_tags, write_script_tags,read_fulfillments, write_fulfillments,read_shipping, write_shipping,read_analytics,read_checkouts, write_checkouts,read_reports, write_reports,read_price_rules, write_price_rules,read_marketing_events, write_marketing_events,read_resource_feedbacks" # Consult this page for more scope options:
                                 # https://help.shopify.com/en/api/getting-started/authentication/oauth/scopes
  config.embedded_app = true
  config.after_authenticate_job = false
  config.api_version = "2019-07"
  config.session_repository = Shop
  config.webhooks = [
    {topic: 'products/create', address: 'https://techazshop.herokuapp.com/webhook/products/create'},
    {topic: 'products/update', address: 'https://techazshop.herokuapp.com/webhook/products/update'},
    {topic: 'orders/create', address: 'https://techazshop.herokuapp.com/webhook/orders/create'},
    {topic: 'orders/update', address: 'https://techazshop.herokuapp.com/webhook/orders/update'},
    {topic: 'checkouts/create', address: 'https://techazshop.herokuapp.com/webhook/checkouts/create'},
    {topic: 'checkouts/update', address: 'https://techazshop.herokuapp.com/webhook/checkouts/update'},
  ]  
  config.scripttags = [
    {event:'onload', src: 'https://techazshop.herokuapp.com/tags/techaz.js'}
  ]  
end

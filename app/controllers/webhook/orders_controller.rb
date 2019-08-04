class Webhook::OrdersController < WebhookController
  def create 
    Rails.logger.info("Webhook::OrdersController.create.................")
    Rails.logger.info(params.inspect)
    render body: nil 
  end 
  def update 
    Rails.logger.info("Webhook::OrdersController.update.................")
    Rails.logger.info(params.inspect)
    render body: nil 
  end 
end

class Webhook::ProductsController < WebhookController
  def create 
    Rails.logger.info("Webhook::ProductsController.create.................")
    Rails.logger.info(params.inspect)
  end 
  def update 
    Rails.logger.info("Webhook::ProductsController.update.................")
    Rails.logger.info(params.inspect)
  end 
end

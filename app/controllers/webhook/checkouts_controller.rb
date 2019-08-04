class Webhook::CheckoutsController < WebhookController
  def create 
    Rails.logger.info("Webhook::CheckoutsController.create.................")
    Rails.logger.info(params.inspect)
    render body: nil 
  end 
  def update 
    Rails.logger.info("Webhook::CheckoutsController.update.................")
    Rails.logger.info(params.inspect)
    render body: nil 
  end 
end

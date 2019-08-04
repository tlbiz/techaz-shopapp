class WebhookController < ApplicationController
  include ShopifyApp::WebhookVerification
end

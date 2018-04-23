Rails.configuration.stripe = {
  :publishable_key => 'pk_test_HFtPBBUHWHIoJAqmb2YVhhbX',
  :secret_key      => 'sk_test_5fwH9FxRW7oP3u4eHYLfnPJH'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]

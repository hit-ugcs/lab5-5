config.action_mailer.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  domain:               'gmail.com',
  user_name:            'ENV["GMAIL_USERNAME"]',
  password:             'ENV["GMAIL_PASSWORD"]',
  authentication:       'plain',
  enable_starttls_auto: true  }
config.action_mailer.delivery_method = :sendmail
config.action_mailer.perform_deliveries = true
config.action_mailer.raise_delivery_errors = true
config.action_mailer.default_options = {from: 'ENV["GMAIL_USERNAME"]' + '@gmail.com'}

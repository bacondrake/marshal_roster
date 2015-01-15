# require 'development_mail_interceptor'
# # require 'dotenv'
# # Dotenv.load
#
# ActionMailer::Base.smtp_settings = {
#   :address              => "smtp.gmail.com",
#   :port                 => 587,
#   :domain               => "gmail.com",
#   :user_name            => 'ENV['USER_NAME']',
#   :password             => ENV['PASSWORD'],
#   :authentication       => "plain",
#   :enable_starttls_auto => true
# }
#
# ActionMailer::Base.default_url_options[:host] = "localhost:3000" #different in prod
# Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?

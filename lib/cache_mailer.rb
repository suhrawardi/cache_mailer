require 'action_mailer'
require 'mail/cache_mailer'
require 'cache_mailer/cucumber'

Mail::CacheMailer.clear_cache!
ActionMailer::Base.add_delivery_method :cache, Mail::CacheMailer

require 'mail/cache_mailer'

Mail::CacheMailer.clear!
ActionMailer::Base.add_delivery_method :cache, Mail::CacheMailer

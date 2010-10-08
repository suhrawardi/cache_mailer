require 'mail/cache_mailer'

Mail::CacheMailer.clear_cache!
ActionMailer::Base.add_delivery_method :cache, Mail::CacheMailer

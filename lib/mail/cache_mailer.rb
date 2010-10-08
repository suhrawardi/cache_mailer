require 'action_mailer'
require 'tmpdir'

module Mail
  class CacheMailer

    CACHE_FILE = "#{Dir.tmpdir}/cache_mailer.cache"

    def initialize(values)
      @settings = {}
    end
    
    attr_accessor :settings

    def deliver!(mail)
      deliveries = CacheMailer.deliveries << mail
      CacheMailer.deliveries = deliveries
    end

    def CacheMailer.deliveries
      File.open(CACHE_FILE) { |f| Marshal.load(f) }
    rescue
      puts $! if $DEBUG
      []
    end

    def CacheMailer.deliveries=(value)
      File.open(CACHE_FILE, 'w') do |f|
        Marshal.dump(value, f)
      end
    end

    def CacheMailer.clear_cache!
      File.delete(CACHE_FILE) if File.exists?(CACHE_FILE)
    end
  end
end

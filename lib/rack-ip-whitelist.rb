require "rack-ip-whitelist/version"

module Rack
  class IpWhitelist
    def initialize(app, addresses)
      @app = app
      @ip_addresses = addresses
    end

    def call(env)
      if white_listed?(env)
        @app.call(env)
      else
        [ 200, {"Content-Type" => "text/html"}, "<p>You are not authorized to view this site</p>" ]
      end
    end
    
    def white_listed?(env)
      Rails.logger.info "WHITELIST: ENV: #{env["REMOTE_ADDR"].inspect}"
      Rails.env.production? ? @ip_addresses.include?(env["REMOTE_ADDR"]) : true
    end
  end
end

require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    # Attio Omniauth Strategy
    class Attio < OmniAuth::Strategies::OAuth2
      option :name, 'attio'

      option :client_options, \
             site: 'https://app.attio.com',
             response_type: 'code',
             authorize_url: 'https://app.attio.com/authorize',
             token_url: 'https://app.attio.com/oauth/token'
         
      info do
        access_token.params.to_h
      end

      def scope
        options[:scope]
      end
      
      def build_access_token
        options.token_params.merge!(:headers => {'Authorization' => basic_auth_header })
        super
      end

      def basic_auth_header
        "Basic " + Base64.strict_encode64("#{options[:client_id]}:#{options[:client_secret]}")
      end

      def callback_url
        return options[:redirect_uri] unless options[:redirect_uri].nil?
        full_host + script_name + callback_path
      end
    end
  end
end

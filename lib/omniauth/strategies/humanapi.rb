require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class HumanAPI < OmniAuth::Strategies::OAuth2
      option :provider_ignores_state, true

      option :client_options, {
        :site          => 'https://api.humanapi.co',
        :authorize_url => 'https://user.humanapi.co/oauth/authorize',
        :token_url     => 'https://user.humanapi.co/oauth/token'
      }

      uid { raw_info['userId'].to_s }

      info do
        {
          :email      => raw_info['email'],
          :created_at => raw_info['createdAt']
        }
      end

      extra do
        { :raw_info => raw_info }
      end

      def raw_info
        @raw_info ||= access_token.get('https://api.humanapi.co/v1/human/profile').parsed
      end
    end
  end
end

OmniAuth.config.add_camelization 'humanapi', 'HumanAPI'

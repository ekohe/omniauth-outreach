# frozen_string_literal: true
require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Outreach < OmniAuth::Strategies::OAuth2
      option :name, 'outreach'

      option :client_options, {
        site: 'https://api.outreach.io',
        authorize_url: 'https://api.outreach.io/oauth/authorize',
        token_url: 'https://api.outreach.io/oauth/token'
      }

      uid { raw_info['id'] }

      info do
        {
          name: raw_info['name'],
          email: raw_info['email']
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/me').parsed
      end
    end
  end
end
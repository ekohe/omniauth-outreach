# frozen_string_literal: true
require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    # The OAuth2 strategy for Outreach.
    class Outreach < OmniAuth::Strategies::OAuth2
      option :name, 'outreach'

      option :client_options, {
        site: 'https://api.outreach.io',
        authorize_url: 'https://api.outreach.io/oauth/authorize',
        token_url: 'https://api.outreach.io/oauth/token'
      }

      uid { raw_info['org_user_id'] }

      info do
        # In our case, Outreach is returning the email address as the sub.
        # But we still need to check if it's an email address or not.
        raw_info['sub'].match?(/.*@.*\..*/) ? { email: raw_info['sub']} : { name: raw_info['sub'] }
      end

      def raw_info
        @raw_info ||= JWT.decode(access_token.token, nil, false)[0]
      end
    end
  end
end
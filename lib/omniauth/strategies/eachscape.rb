require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class EachScape < OmniAuth::Strategies::OAuth2

      # Available scopes: read_permissions, editor
      DEFAULT_SCOPE = 'read_permissions'

      option :name, 'eachscape'

      option :client_options, {
          site: ENV['EACHSCAPE_HOST'] || 'https://builder.eachscape.com',
          authorize_url: '/api/oauth2/authorize',
          token_url: '/api/oauth2/token',
      }


      uid { raw_info['id'] }

      info do
        {
            name: raw_info['name'],
            email: raw_info['email'],
        }
      end

      extra do
        { raw_info: raw_info }
      end


      def authorize_params
        super.tap do |params|
          params[:scope] ||= DEFAULT_SCOPE
        end
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/me').parsed
      end

    end
  end
end

OmniAuth.config.add_camelization('eachscape', 'EachScape')

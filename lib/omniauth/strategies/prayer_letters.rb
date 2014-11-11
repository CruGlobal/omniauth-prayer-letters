require 'omniauth-oauth2'
require 'multi_json'

module OmniAuth
  module Strategies
    class PrayerLetters < OmniAuth::Strategies::OAuth2
      args [:client_id]

      option :name, 'prayer_letters'

      option :client_options, {
        site: 'https://www.prayerletters.com',
        authorize_url: '/my/oauth/authorize',
        token_url: '/oauth/token',
      }

      option :authorize_options, {
        response_type: 'code',
        scope: 'contacts.read,contacts.write',
        state: ''
      }

      uid { raw_info['id'] }

      info do
        {
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= {} #MultiJson.decode(access_token.get('/v2/people/@me/@self?format=json').body)['entry']
      end

      def request_phase
        options.request_params ||= {}
        #options.request_params[:permissions] = options.permissions
        super
      end

    end
  end
end

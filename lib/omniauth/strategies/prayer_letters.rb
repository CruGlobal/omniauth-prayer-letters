require 'omniauth-oauth2'
require 'multi_json'

module OmniAuth
  module Strategies
    class PrayerLetters < OmniAuth::Strategies::OAuth2
      option :name, 'prayer_letters'

      option :client_options, {
        site: 'https://www.prayerletters.com',
        authorize_url: '/my/oauth/authorize',
        token_url: '/oauth/token'
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
        super
      end

    end
  end
end

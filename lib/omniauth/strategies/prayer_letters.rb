require 'omniauth-oauth'
require 'multi_json'

module OmniAuth
  module Strategies
    class PrayerLetters < OmniAuth::Strategies::OAuth
      option :name, 'prayer_letters'

      option :client_options, {
        :site               => 'https://www.prayerletters.com',
        :authorize_path     => '/my/oauth1/authorize',
        :access_token_path  => '/api/oauth1/token',
        :request_token_path => '/api/oauth1/initiate',
        :http_method        => 'post',
        :scheme             => :query_string,
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
    end
  end
end

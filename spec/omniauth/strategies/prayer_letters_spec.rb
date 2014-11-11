require 'spec_helper'
require 'omniauth-prayer-letters'

describe OmniAuth::Strategies::PrayerLetters do
  let(:app) { lambda { [200, {}, ["Hello."]] } }
  let(:subject) { OmniAuth::Strategies::PrayerLetters.new(app, 'test_client_id', @options) }

  before do
    OmniAuth.config.test_mode = true
  end

  after do
    OmniAuth.config.test_mode = false
  end

  it_should_behave_like 'an oauth2 strategy'
end

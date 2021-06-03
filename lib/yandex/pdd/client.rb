require 'yandex/pdd/client/connection'

require 'yandex/pdd/client/domains'
require 'yandex/pdd/client/mailboxes'
require 'yandex/pdd/client/maillists'
require 'yandex/pdd/client/subscriptions'

module Yandex
  module Pdd
    class Client
      include HTTParty
      include Yandex::Pdd::Client::Connection
      include Yandex::Pdd::Client::Domains
      include Yandex::Pdd::Client::Mailboxes
      include Yandex::Pdd::Client::Maillists
      include Yandex::Pdd::Client::Subscriptions

      base_uri 'https://pddimp.yandex.ru'
      format :json

      def initialize(token = nil)
        @token = token || ENV['PDD_TOKEN']

        self.class.default_options.merge!(headers: { PddToken: @token, 'Content-Type': 'application/x-www-form-urlencoded' })
      end
    end
  end
end

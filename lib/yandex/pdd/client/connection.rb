module Yandex
  module Pdd
    class Client
      module Connection
        def get(path, options = {})
          response = self.class.send(:get, path, query: options)
          response.parsed_response
        end

        def post(path, options = {})
          request :post, path, options
        end

        def put(path, options = {})
          request :put, path, options
        end

        def patch(path, options = {})
          request :patch, path, options
        end

        def delete(path, options = {})
          request :delete, path, options
        end

        private

        def request(http_method, path, options)
          response = self.class.send(http_method, path, body: options)
          response.parsed_response
        end
      end
    end
  end
end

module Yandex
  module Pdd
    class Client
      module Domains
        # page=<Page number>
        # on_page=<Domains per page>
        def domain_list(page = nil, on_page = nil)
          query = {
            page: page,
            on_page: on_page
          }

          get('/api2/admin/domain/domains', query)
        end

        # domain=<Domain name>
        def domain_register(options = {})
          post('/api2/admin/domain/register', options)
        end

        # domain=<Domain name>
        def domain_registration_status(domain)
          query = {
            domain: domain
          }

          get('/api2/admin/domain/registration_status', query)
        end

        # domain=<Domain name>
        def domain_details(domain)
          query = {
            domain: domain
          }

          get('/api2/admin/domain/details', query)
        end

        # domain=<Domain name>
        def domain_delete(options = {})
          post('/api2/admin/domain/delete', options)
        end

        # domain=<Domain name>
        # country=<Country code>
        def domain_set_country(options = {})
          post('/api2/admin/domain/settings/set_country', options)
        end
      end
    end
  end
end

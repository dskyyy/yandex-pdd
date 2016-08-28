module Yandex
  module Pdd
    module Client
      module Domains

        # page=<номер страницы ответа>
        # on_page=<количество доменов на каждой странице ответа>
        def list(page = nil, on_page = nil)
          options = {
              :page => page,
              :on_page => on_page
          }

          get("/api2/admin/domain/domains", query: options)
        end

        # domain=<имя домена>
        def register(options = {})
          post("/api2/admin/domain/register", options)
        end

        # domain=<имя домена>
        def registration_status(domain)
          options = {
              :domain => domain
          }

          get("/api2/admin/domain/registration_status", query: options)
        end

        # domain=<имя домена>
        def details(domain)
          options = {
              :domain => domain
          }

          get("/api2/admin/domain/details", query: options)
        end

        # domain=<имя домена>
        def delete(options = {})
          post("/api2/admin/domain/delete", options)
        end

        # domain=<имя домена>
        # country=<код страны домена>
        def set_country(options = {})
          post("/api2/admin/domain/settings/set_country", options)
        end

      end
    end
  end
end

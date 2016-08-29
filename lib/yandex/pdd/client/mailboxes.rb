module Yandex
  module Pdd
    class Client
      module Mailboxes

        # domain=<имя домена>
        # login=<логин почтового ящика>
        # password=<пароль>
        def add(options = {})
          post("/api2/admin/email/add", options)
        end

        # domain=<имя домена>
        # page=<номер страницы ответа>
        # on_page=<количество почтовых ящиков на каждой странице ответа>
        def list(domain, page = nil, on_page = nil)
          options = {
              :domain => domain,
              :page => page,
              :on_page => on_page
          }

          get("/api2/admin/email/list", query: options)
        end

        # domain=<имя домена>
        # login=<email-адрес или логин почтового ящика>|uid=<идентификатор почтового ящика>
        # password=<новый пароль>
        # iname=<имя>
        # fname=<фамилия>
        # enabled=<статус работы почтового ящика>
        # birth_date=<дата рождения>
        # sex=<пол>
        # hintq=<секретный вопрос>
        # hinta=<ответ на секретный вопрос>
        def edit(options = {})
          post("/api2/admin/email/edit", options)
        end

        # domain=<имя домена>
        # login=<email-адрес или логин почтового ящика>|uid=<идентификатор почтового ящика>
        def delete(options = {})
          post("/api2/admin/email/del", options)
        end

        # @param domain=<имя домена>
        # @param login=<email-адрес или логин почтового ящика>|uid=<идентификатор почтового ящика>
        def counters(domain, login = nil, uid = nil)
          options = {
              :domain => domain,
              :login => login,
              :uid => uid
          }

          get("/api2/admin/email/counters", query: options)
        end

      end
    end
  end
end

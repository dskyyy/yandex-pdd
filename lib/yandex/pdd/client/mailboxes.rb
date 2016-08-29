module Yandex
  module Pdd
    class Client
      module Mailboxes
        # domain=<Domain name>
        # login=<Login>
        # password=<Password>
        def mailbox_add(options = {})
          post('/api2/admin/email/add', options)
        end

        # domain=<Domain>
        # page=<Page number>
        # on_page=<Mailboxes per page>
        def mailbox_list(domain, page = nil, on_page = nil)
          query = {
            domain: domain,
            page: page,
            on_page: on_page
          }

          get('/api2/admin/email/list', query)
        end

        # domain=<Domain name>
        # login=<Email or login>|uid=<Mailbox ID>
        # password=<The new password>
        # iname=<Name>
        # fname=<Last name>
        # enabled=<State>
        # birth_date=<Date of birth>
        # sex=<Sex>
        # hintq=<Secret answer>
        # hinta=<Secret answer key>
        def mailbox_edit(options = {})
          post('/api2/admin/email/edit', options)
        end

        # domain=<Domain name>
        # login=<Email or login>|uid=<Mailbox ID>
        def mailbox_delete(options = {})
          post('/api2/admin/email/del', options)
        end

        # domain=<Domain name>
        # login=<Email or login>|uid=<Mailbox ID>
        def mailbox_counters(domain, login = nil, uid = nil)
          query = {
            domain: domain,
            login: login,
            uid: uid
          }

          get('/api2/admin/email/counters', query)
        end
      end
    end
  end
end

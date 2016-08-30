module Yandex
  module Pdd
    class Client
      module Maillists

        # domain=<Domain name>
        # maillist=<Email or maillist login>
        def maillist_add(options = {})
          post('/api2/admin/email/ml/add', options)
        end

        # domain=<Domain name>
        def maillist_list(domain)
          query = {
            doamin: domain
          }

          get('/api2/admin/email/ml/list', query)
        end

        # domain=<Domain name>
        # maillist=<Email or maillist login>|maillist_uid=<Maillist ID>
        def maillist_delete(options = {})
          post('/api2/admin/email/ml/del', options)
        end

      end
    end
  end
end

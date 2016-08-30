module Yandex
  module Pdd
    class Client
      module Subscriptions
        # domain=<Domain name>
        # maillist=<Email or subscription login>|maillist_uid=<Subscription ID>
        # subscriber=<Subscriber's email>|subscriber_uid=<Subscriber's ID>
        # can_send_on_behalf=<Subscriber's status>
        def subscription_add(options = {})
          post('/api2/admin/email/ml/subscribe', options)
        end

        # domain=<Domain name>
        # maillist=<Email or subscription login>|maillist_uid=<Subscription ID>
        def subscription_sublist(domain, maillist = nil, maillist_uid = nil)
          query = {
            domain: domain,
            maillist: maillist,
            maillist_uid: maillist_uid
          }

          get('/api2/admin/email/ml/subscribers', query)
        end

        def subscription_destroy(options = {})
          post('/api2/admin/email/ml/unsubscribe', options)
        end

        # domain=<Domain name>
        # maillist=<Email or subscription login>|maillist_uid=<Subscription ID>
        # subscriber=<Subscriber's email>|subscriber_uid=<Subscriber's ID>
        def subscription_status(domain, maillist = nil, maillist_uid = nil, subscriber = nil, subscriber_uid = nil)
          query = {
            domain: domain,
            maillist: maillist,
            maillist_uid: maillist_uid,
            subscriber: subscriber,
            subscriber_uid: subscriber_uid
          }

          get('/api2/admin/email/ml/get_can_send_on_behalf', query)
        end

        # domain=<Domain name>
        # maillist=<Email or subscription login>|maillist_uid=<Subscription ID>
        # subscriber=<Subscriber's email>|subscriber_uid=<Subscriber's ID>
        # can_send_on_behalf=<Subscriber's status>
        def subscription_set_status(options = {})
          post('/api2/admin/email/ml/set_can_send_on_behalf', options)
        end
      end
    end
  end
end

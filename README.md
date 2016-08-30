# Yandex-Pdd

Unofficial Yandex Mail for Domain service API implementation.

- [x] Domains
- [x] Domain's mailboxes
- [x] Subscriptions list
- [x] Managing subscribers
- [ ] Import
- [ ] Sharing domain's management privileges
- [ ] Managing DKIM
- [ ] Managing DNS
- [ ] Managing OAuth features

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'yandex-pdd'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yandex-pdd

## Usage

First of all [create access token](https://pddimp.yandex.ru/api2/registrar/get_token)

Initialize client via access token:
```ruby
client = Yandex::Pdd::Client.new('PDD_TOKEN')
```

Call to API:
```ruby
client.mailbox_list('domain_name')
```

Methods are available:
###### Domains
```ruby
domain_list
domain_register
domain_registration_status
domain_details
domain_set_country
```

###### Mailboxes
```ruby
mailbox_add
mailbox_list
mailbox_edit
mailbox_delete
mailbox_counters
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/dskyyy/yandex-pdd]()


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


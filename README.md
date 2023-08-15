# Omniauth::Attio

[![Gem Version](https://badge.fury.io/rb/omniauth-attio.svg)](https://badge.fury.io/rb/omniauth-attio)

This gem contains the Attio strategy for OmniAuth.

For more information about the Attio Api authentication: https://attio.com/developers/authentication

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-attio'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-attio

## Usage

If you are using rails, you need to add the gem to your Gemfile:

```ruby
gem 'omniauth-attio'
```

You can pull them in directly from github e.g.:

```ruby
gem "omniauth-attio", :git => "git://github.com/juneHQ/omniauth-attio.git"
```

Add provider in omniauth.rb along with CLIENT_ID and CLIENT_SECRET

e.g.

```ruby
provider :attio, ATTIO_CLIENT_ID, ATTIO_CLIENT_SECRET, , {
        callback_url: ATTIO_CALLBACK_URL,
        scope: ATTIO_SCOPE
    }
```

Obtain your CLIENT_ID/CLIENT_SECRET by registering your app inside the Attio app in the "Developers" section.

After you have the gem running and the configuration is done, you can go to this url to log the user in:

http://localhost:3000/auth/attio

### Where are the token and the source names?

From your callback controller you can find your token: `request.env['omniauth.auth'].credentials.token` and the source names: `request.env['omniauth.auth'].info.source_names` along with the rest information that Attio returns.

Now just follow the README at: https://github.com/omniauth/omniauth

### Error handling

- If the user does not have access to the repository, the script will fail with a 404 error

- If the repository does not exist, the script will fail with a 404 error

- If the user does not have any public repository, the script will fail with a 404 error

- If the user does not exist, the script will fail with a 404 error

- If the user does not provide a username, the script will fail with a 404 error

- If the user does not provide a repository, the script will fail with a 404 error

- If the user does not provide a token, the script will fail with a 404 error

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/juneHQ/omniauth-attio.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

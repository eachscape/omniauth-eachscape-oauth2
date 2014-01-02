# OmniAuth::Strategies::EachScape

An EachScape OAuth2 strategy for OmniAuth (https://builder.eachscape.com).

## Usage

```ruby
# config/initializers/omniauth.rb
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :eachscape, ENV['EACHSCAPE_CLIENT_ID'], ENV['EACHSCAPE_CLIENT_SECRET']
end
```

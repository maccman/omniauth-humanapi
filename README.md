# OmniAuth Humanapi

This is a [OmniAuth](http://www.omniauth.org/) strategy for authenticating to HumanAPI. To use it, you'll need to sign up for an OAuth2 Application ID and Secret on the [Human API applications page](http://developer.humanapi.co/).

## Basic Usage

    use OmniAuth::Builder do
      provider :humanapi, ENV['HUMANAPI_KEY'], ENV['HUMANAPI_SECRET']
    end

## Example Sinatra usage

    get '/auth/humanapi/callback' do
      auth   = env['omniauth.auth']
      uid    = auth[:uid]
      email  = auth[:info][:email]
      token  = auth[:credentials][:token]
      'ok'
    end
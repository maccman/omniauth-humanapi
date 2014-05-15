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

## Pre-registration

HumanAPI allows you to [pre-register](https://user.humanapi.co/developer/docs/app_users) users so they won't have to sign up themselves. By pre-registering, you will receive a `humanId` for every user. This has to be passed as a query parameter to the authentication path:

    /auth/humanapi?human_id=52867cbede3155565f000a0d

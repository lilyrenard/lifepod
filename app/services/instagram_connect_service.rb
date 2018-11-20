require 'rest-client'
class InstagramConnectService
  def initialize(code, redirect)
    @code = code
    @url = "https://api.instagram.com/oauth/access_token"
    @client_secret = ENV['INSTAGRAM_SECRET_KEY']
    @client_id = ENV['INSTAGRAM_CLIENT_ID']
    @redirect = ''
    if Rails.env == "development"
      @redirect = "http://localhost:3000#{redirect}"
    else
      @redirect = "http://www.mylifepod.fr#{redirect}"
    end
  end

  def call
    payload = {
      grant_type: "authorization_code",
      code: @code,
      redirect_uri: @redirect,
      client_id: @client_id,
      client_secret: @client_secret
    }
    RestClient.post(@url, payload)
  end
end

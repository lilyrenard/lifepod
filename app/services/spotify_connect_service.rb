require 'rest-client'
class SpotifyConnectService
  def initialize(code, redirect)
    @code = code
    @url = "https://accounts.spotify.com/api/token"
    @client_secret = ENV['SPOTIFY_SECRET_KEY']
    @client_id = ENV['SPOTIFY_CLIENT_ID']
    @redirect = ''
    if Rails.env == "development"
      @redirect = "http://localhost:3000#{redirect}"
    else
      @redirect = "https://lifepod.herokuapp.com#{redirect}"
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
    response = [RestClient.post(@url, payload, content_type: 'application/x-www-form-urlencoded'), false]
    if response[0].code == 200
      response[1] = true
    end
    return response
  end
end

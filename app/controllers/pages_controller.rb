require 'open-uri'
require "base64"
require 'rest-client'

class PagesController < ApplicationController
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [:home]
  before_action :redirect_if_logged, only: [:home]

  def home
  end

  def add
    flash.now[:alert] = "Click to add a memory!" if URI(request.referer).path == '/memories/board'
    @memory = Memory.new
  end

  def profile
    @url = ''
    if Rails.env = "development"
      @url = "https://accounts.spotify.com/fr/authorize/?client_id=#{ENV['SPOTIFY_CLIENT_ID']}&response_type=code&redirect_uri=http://localhost:3000/memories/spotify_connect&scope=user-modify-playback-state%20user-read-currently-playing%20user-read-playback-state%20user-library-modify%20user-library-read%20streaming%20app-remote-control%20user-read-email%20user-read-private%20user-read-birthdate%20user-follow-read%20user-follow-modify%20playlist-read-private%20playlist-read-collaborative%20playlist-modify-public%20playlist-modify-private%20user-read-recently-played%20user-top-read"
    else
      @url = "https://accounts.spotify.com/fr/authorize/?client_id=#{ENV['SPOTIFY_CLIENT_ID']}&response_type=code&redirect_uri=https://lifepod.herokuapp.com/memories/spotify_connect&scope=user-modify-playback-state%20user-read-currently-playing%20user-read-playback-state%20user-library-modify%20user-library-read%20streaming%20app-remote-control%20user-read-email%20user-read-private%20user-read-birthdate%20user-follow-read%20user-follow-modify%20playlist-read-private%20playlist-read-collaborative%20playlist-modify-public%20playlist-modify-private%20user-read-recently-played%20user-top-read"
    end
  end

  def spotify_connect
    url = "https://accounts.spotify.com/api/token"
    code = params[:code]
    payload = {
      grant_type: "authorization_code",
      code: params[:code],
      redirect_uri: "http://localhost:3000/memories/spotify_connect",
      client_id: ENV['SPOTIFY_CLIENT_ID'],
      client_secret: ENV['SPOTIFY_SECRET_KEY']
    }
    response = JSON.parse(RestClient.post(url, payload, content_type: 'application/x-www-form-urlencoded'))
    current_user.spotify = response["access_token"]
    current_user.save

    redirect_to profile_path
  end

  def test
  end

  def test2
    @memory = Memory.new
  end

  private

  def redirect_if_logged
    redirect_to memboard_path if user_signed_in?
  end
end

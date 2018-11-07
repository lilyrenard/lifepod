require 'open-uri'
require "base64"
require 'rest-client'
require 'ostruct'
require 'nokogiri'
require 'open-uri'

class PagesController < ApplicationController
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [:home]
  before_action :redirect_if_logged, only: [:home]

  def home
  end

  def add
    # if (current_user.spotify_already == true && response.code == "401")
    #   response = SpotifyConnectService.new(params["code"], "/memories/add").call
    #   current_user.spotify = response[0]
    #   current_user.spotify_already = response[1]
    #   current_user.save
    # end

    flash.now[:alert] = "Click to add a memory!" if URI(request.referer).path == '/memories/board'
    @memory = Memory.new

    # SPOTIFY MEMORIES
    unless current_user.spotify.nil?
      url_top_tracks = "https://api.spotify.com/v1/me/top/tracks?time_range=medium_term&limit=50"
      payload = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': "Bearer #{JSON.parse(current_user.spotify)["access_token"]}"
      }
      response = RestClient.get(url_top_tracks, payload)
      top_tracks = JSON.parse(RestClient.get(url_top_tracks, payload))

      @spotify_memories = []
      top_tracks["items"].each_with_index do |chanson, i|
        artist = chanson["artists"][0]["name"]
        track = chanson["name"]
        pochette = chanson["album"]["images"][0]["url"]
        url = chanson["id"]
        @spotify_memories << OpenStruct.new({
                title: artist,
                description: track,
                memory_type: "spotify",
                user_id: current_user.id,
                suggested: true,
                image_associated: pochette,
                id: i,
                url: url
                })
      end
    end

    # INSTAGRAM MEMORIES
    unless current_user.instagram.nil?
      url_recent_photos = "https://api.instagram.com/v1/users/self/media/recent/?access_token=#{JSON.parse(current_user.instagram)["access_token"]}"
      response_insta = RestClient.get(url_recent_photos)
      top_photos = JSON.parse(response_insta)
      @insta_memories = []
      top_photos["data"].each_with_index do |media, i|
        title = (media["location"].nil? ? '' : media["location"]["name"])
        description = media["caption"]["text"]
        image_associated = media["images"]["standard_resolution"]["url"]
        likes = media["likes"]["count"]
        @insta_memories << OpenStruct.new({
          title: title,
          description: description,
          image_associated: image_associated,
          memory_type: "instagram",
          user_id: current_user.id,
          suggested: true,
          id: i,
          likes: likes
        })
      end
    end

    @memories = []
    @insta_memories.each { |insta| @memories << insta }
    @spotify_memories.each { |music| @memories << music }
    @memories.shuffle!
  end

  def photo
    @memory = Memory.new
  end

  def video
    @memory = Memory.new
  end

  def quote
    @memory = Memory.new
  end


  def profile
    # URL TO CONNECT GET REQUEST
    @url_spotify = ''
    @url_instagram = ''
    if Rails.env == "development"
      @url_spotify = "https://accounts.spotify.com/fr/authorize/?client_id=#{ENV['SPOTIFY_CLIENT_ID']}&response_type=code&redirect_uri=http://localhost:3000/memories/profile&scope=user-modify-playback-state%20user-read-currently-playing%20user-read-playback-state%20user-library-modify%20user-library-read%20streaming%20app-remote-control%20user-read-email%20user-read-private%20user-read-birthdate%20user-follow-read%20user-follow-modify%20playlist-read-private%20playlist-read-collaborative%20playlist-modify-public%20playlist-modify-private%20user-read-recently-played%20user-top-read"
      @url_instagram = "https://api.instagram.com/oauth/authorize/?client_id=#{ENV['INSTAGRAM_CLIENT_ID']}&redirect_uri=http://localhost:3000/memories/profile?referer=instagram&response_type=code"
    else
      @url_spotify = "https://accounts.spotify.com/fr/authorize/?client_id=#{ENV['SPOTIFY_CLIENT_ID']}&response_type=code&redirect_uri=https://lifepod.herokuapp.com/memories/profile&scope=user-modify-playback-state%20user-read-currently-playing%20user-read-playback-state%20user-library-modify%20user-library-read%20streaming%20app-remote-control%20user-read-email%20user-read-private%20user-read-birthdate%20user-follow-read%20user-follow-modify%20playlist-read-private%20playlist-read-collaborative%20playlist-modify-public%20playlist-modify-private%20user-read-recently-played%20user-top-read"
      @url_instagram = "https://api.instagram.com/oauth/authorize/?client_id=#{ENV['INSTAGRAM_CLIENT_ID']}&redirect_uri=https://lifepod.herokuapp.com/memories/profile?referer=instagram&response_type=code"
    end

    # SPOTIFY & INSTAGRAM CONNECT
    if ((params["code"]) && (params["referer"] == "instagram"))
      response = InstagramConnectService.new(params["code"], "/memories/profile?referer=instagram").call
      current_user.instagram = response
      current_user.save
    elsif params["code"]
      response = SpotifyConnectService.new(params["code"], "/memories/profile").call
      current_user.spotify = response[0]
      current_user.spotify_already = response[1]
      current_user.save
    end
  end

  def dashboard
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

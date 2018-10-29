class PagesController < ApplicationController
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [:home]
  before_action :redirect_if_logged, only: [:home]

  def home
  end

  def add
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

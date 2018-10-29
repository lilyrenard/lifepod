class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def add
  end

  def test
  end

  def test2
    @memory = Memory.new
  end
end

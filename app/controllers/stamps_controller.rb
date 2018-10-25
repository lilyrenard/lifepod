class StampsController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_memory
  end

  def find_stamp
  end

  def stamp_params
    params.require(:stamp).permit(:title)
  end
end

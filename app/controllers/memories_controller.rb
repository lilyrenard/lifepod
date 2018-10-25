class MemoriesController < ApplicationController
  def index
  end

  def show
  end

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

  def set_stamp
  end

  def find_memory
  end

  def memory_params
    params.require(:memory).permit(:title, :description)
  end
end

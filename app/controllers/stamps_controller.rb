class StampsController < ApplicationController
  before_action :find_stamp, only: [:edit, :update, :destroy, :create]
  before_action :set_memory, only: []

  def new
    @stamp = Stamp.new
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
    @memory = Memory.find(params[:memory_id])
  end

  def find_stamp
    @stamp = Stamp.find(params[:id])
  end

  def stamp_params
    params.require(:stamp).permit(:title)
  end
end

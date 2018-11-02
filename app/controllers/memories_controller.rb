class MemoriesController < ApplicationController
  before_action :find_memory, only: [:show, :edit, :update, :destroy]

  def index
    @memories = policy_scope(Memory)
  end

  def show
  end

  def new
    @memory = Memory.new
  end

  def create
    @memory = Memory.new(memory_params)
    @memory.user_id = current_user.id
    @stamp = Stamp.find_or_create_by(title: params[:memory][:stamps][:title])
    @stamp.user_id = current_user.id
    @stamp.save

    if @memory.save
      flash[:notice] = true
      redirect_to add_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @memory.update(memory_params)
      redirect_to memory_path(@memory)
    else
      render :edit
    end
  end

  def destroy
    @memory.destroy
    redirect_to memories_path
  end

  private

  def set_stamp
  end

  def find_memory
    @memory = Memory.find(params[:id])
  end

  def memory_params
    params.require(:memory).permit(:title, :description, :photo, :memory_type)
  end
end

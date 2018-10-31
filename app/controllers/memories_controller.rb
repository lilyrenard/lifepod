class MemoriesController < ApplicationController
  before_action :find_memory, only: [:show, :edit, :update, :destroy]

  def index
    if params[:stamp] == nil
      @memories = policy_scope(Memory)
    else
      stamps = params[:stamp].split
      stamps_ids = []
      stamps.each do |stamp_title|
        stamp_id = Stamp.find_by_title(stamp_title).id
        stamps_ids << stamp_id
      end
      @memories = policy_scope(Memory).joins(:stamps).where(stamps: { id: stamps_ids }).distinct
    end
  end

  def show
  end

  def new
    @memory = Memory.new
  end

  def create
    @memory = Memory.new(memory_params)
    @memory.memory_type = 'Quote'
    @memory.user_id = current_user.id

    # l'utilisateur entre un ou plusieurs stamps
    stamps = params[:memory][:stamps][:title].split
    #pour chacun des stamps rentrés par l'utilisateur je cherche s'il existe et je l'ajoute
    stamps.each do |stamp_title|
      stamp = Stamp.find_or_create_by(title: stamp_title.downcase)
      stamp.user_id = current_user.id
      stamp.save
      #j'associe le stamp au memory
      @memory.stamps << stamp
    end

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
    params.require(:memory).permit(:title, :description, :photo)
  end
end

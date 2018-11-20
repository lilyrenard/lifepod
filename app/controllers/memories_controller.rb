class MemoriesController < ApplicationController
  before_action :find_memory, only: [:show, :edit, :update, :destroy]

  def index
  # pas de bug si on rentre juste /memories
    if params[:stamp] == nil
      @memories = policy_scope(Memory)
    else
      @stamps = []
      # on récupère tous les paramètres de ?stamp =
      stamps_ids = []
      params["stamp"].each do |stamp_title|
        if Stamp.where(user_id: current_user.id).find_by_title(stamp_title) == nil
        else
          @stamps << Stamp.where(user_id: current_user.id).find_by_title(stamp_title)
          stamps_ids = @stamps.pluck(:id)
        end
      end
      # si on cherche un mot ou plusieurs mots
      if params[:stamp].length > 1
        # on fait une join table et on cherche les souvenirs avec les stamps correspondants
        mem = policy_scope(Memory).joins(:stamps).where(stamps: { id: stamps_ids }).group(:id).having("count(*) > #{params[:stamp].length-1}").distinct
        # on ne trouve que les memories qui correspondent aux stamps
        @memories = mem.pluck(:id).map {|id| Memory.find(id)}
      else
        @memories = policy_scope(Memory).joins(:stamps).where(stamps: { id: stamps_ids })
      end
    end
  end

  def show
    authorize(@memory)
  end

  def new
    @memory = Memory.new
  end

  def create
    @memory = Memory.new(memory_params)
    @memory.user_id = current_user.id

    # preview image
    if params[:image_id].present?
      preloaded = Cloudinary::PreloadedFile.new(params[:image_id])
      raise "Invalid upload signature" if !preloaded.valid?
      @memory.remote_photo_url = "https://res.cloudinary.com/dt38p7qqh/#{params[:image_id]}"
    end
    # l'utilisateur entre un ou plusieurs stamps
    stamps = params[:memory][:stamps]

    #pour chacun des stamps rentrés par l'utilisateur je cherche s'il existe et je l'ajoute
    #j'associe le stamp au memory

    if stamps != nil
      stamps.each do |stamp_title|
        stamp = Stamp.create_with(stamp_image: "stamp#{rand(2..13)}").find_or_create_by(title: stamp_title, user: current_user)
        stamp.user_id = current_user.id
        @memory.stamps << stamp
      end
    end

    if @memory.save
      flash[:notice] = true
      redirect_to add_path
    else
      flash[:alert] = 'Error! Memory invalid.'
      redirect_to add_path
    end
  end

  def edit
  end

  def update
    @memory.stamps = []
    stamps = params[:memory][:stamps]
    #pour chacun des stamps rentrés par l'utilisateur je cherche s'il existe et je l'ajoute
    stamps.each do |stamp_title|
      stamp = Stamp.create_with(stamp_image: "stamp#{rand(2..7)}").find_or_create_by(title: stamp_title, user: current_user)
      stamp.user_id = current_user.id
      #j'associe le stamp au memory
      # fail
      @memory.stamps << stamp
    end

    if @memory.update(memory_params)
      authorize(@memory)
      redirect_to memories_path
    else
      render :edit
    end
  end

  def destroy
    @memory.destroy
    authorize(@memory)
    redirect_to memories_path
  end

  private

  def set_stamp
  end

  def find_memory
    @memory = Memory.find(params[:id])
  end

  def memory_params
    params.require(:memory).permit(:title, :description, :photo, :memory_type, :image_associated, :url, :api_id, :stamps)
  end
end

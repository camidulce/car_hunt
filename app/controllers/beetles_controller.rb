class BeetlesController < ApplicationController
  before_action :set_beetle, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  def index
    @beetles = Beetle.order(created_at: :asc)
    # respond_with(@beetles)
  end

  def show
    # respond_with(@beetle)
  end

  def new
    @beetle = current_user.beetles.build
    # respond_with(@beetle)
  end

  def edit
  end

  def create
    @beetle = Beetle.new(beetle_params)
    if @beetle.save
      current_user.beetles << @beetle
     redirect_to @beetle, notice: "Successfully Created"
   else
      render :new, notice: "Beetle did not save"
    end
  end

  def update
    if @beetle.update(beetle_params)
    redirect_to @beetle, notice: "Successfully saved"
    else
    render :edit
    end
  end

  def destroy
    if @beetle.destroy
    redirect_to beetles_url, notice: "Deleted!"
    else
      render beetles_path, notice: "Fail"
    end
  end

  def index
    if params[:search].present?
      @beetles = Beetle.near(params[:search], 50)
    else
      @beetles = Beetle.order(created_at: :desc)
    end
  end

  private
    def set_beetle
      @beetle = Beetle.find(params[:id])
    end

    def correct_user
      @beetle = current_user.beetles.find_by(id: params[:id])
      redirect_to beetles_path, notice: "Not authorized to edit this beetle" if @beetle.nil?
    end

    def beetle_params
      params.require(:beetle).permit(:nickname, :address, :latitude, :longitude, :zip, :type, :year, :color, :engine, :interior, :picture, :image)
    end
end

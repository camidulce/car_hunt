class BeetlesController < ApplicationController
  before_action :set_beetle, only: [:show, :edit, :update, :destroy]

  def index
    @beetles = Beetle.all
    # respond_with(@beetles)
  end

  def show
    # respond_with(@beetle)
  end

  def new
    @beetle = Beetle.new
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
    redirect_to beetles_path, notice: "Deleted!"
    else
      render beetles_path, notice: "Fail"
    end
  end

  private
    def set_beetle
      @beetle = Beetle.find(params[:id])
    end

    def beetle_params
      params.require(:beetle).permit(:nickname, :zip, :type, :year, :color, :engine, :interior, :picture)
    end
end

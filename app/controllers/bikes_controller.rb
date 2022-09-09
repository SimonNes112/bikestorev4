class BikesController < ApplicationController
  before_action :set_bike, only: %i[ show edit update destroy ]

  # GET /bikes or /bikes.json
  def index
    @bikes = Bike.all
  end

  # GET /bikes/1 or /bikes/1.json
  def show
  end

  # GET /bikes/new
  def new
    @bike = Bike.new
  end

  # GET /bikes/1/edit
  def edit
  end
  
  def update
    respond_to do |format|
      if @bike.update(bike_params)
        format.html { redirect_to bike_url(@bike), notice: "Bike was successfully updated." }
        format.json { render :show, status: :ok, location: @bike }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bike.errors, status: :unprocessable_entity }
      end
    end 
  end


  # POST /bikes or /bikes.json
  def create
    @bike = Bike.new(bike_params)

    if @bike.save
      redirect_to @bike
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bike.destroy

  respond_to do |format|
    format.html { redirect_to :bikes, notice: "Bike was successfully destroyed." }
    format.json { head :no_content }
  end
  end

  private
  def bike_params 
    params.require(:bike).permit(:title, :price, :electric,:bike_model_id)
  end

  def set_bike
    @bike = Bike.find(params[:id])
  end
end
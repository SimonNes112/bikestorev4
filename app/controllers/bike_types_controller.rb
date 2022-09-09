class BikeTypesController < ApplicationController
    before_action :set_bike_type, only: %i[ show edit update destroy ]
  
    # GET /bikes or /bikes.json
    def index
      @bike_types = BikeType.all
    end
  
    # GET /bikes/1 or /bikes/1.json
    def show
    end
  
    # GET /bikes/new
    def new
      @bike_type = BikeType.new
    end
  
    # GET /bikes/1/edit
    def edit
    end

 def update
   respond_to do |format|
     if @bike_type.update(bike_type_params)
       format.html { redirect_to bike_type_url(@bike_type), notice: "Bike_types was successfully updated." }
       format.json { render :show, status: :ok, location: @bike_type }
     else
       format.html { render :edit, status: :unprocessable_entity }
       format.json { render json: @bike_type.errors, status: :unprocessable_entity }
     end
   end 
 end

    # DELETE /posts/1 or /posts/1.json
    def destroy
      @bike_type.destroy

    respond_to do |format|
      format.html { redirect_to bike_types_url, notice: "type was successfully destroyed." }
      format.json { head :no_content }
    end
    end


    # POST /bikes or /bikes.json
    def create
      @bike_type = BikeType.new(bike_type_params)

      if @bike_type.save
        redirect_to @bike_type
      else
        render :new, status: :unprocessable_entity
      end
    
    end
    private
    def bike_type_params 
      params.require(:bike_type).permit(:gender, :size, :color)
    end

    def set_bike_type
      @bike_type = BikeType.find(params[:id])
    end
end

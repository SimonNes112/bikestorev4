class BikePhotosController < ApplicationController
    before_action :set_bike_photo, only: %i[ show edit update destroy ]
      
    # GET /bikes or /bikes.json
    def index
      @bike_photos = BikePhoto.all
    end
  
    # GET /bikes/1 or /bikes/1.json
    def show
    end
  
    # GET /bikes/new
    def new
      @bike_photo = BikePhoto.new
      
    end
  
    # GET /bikes/1/edit
    def edit
    end

     # GET /bike_photos/1/update
  def update
    respond_to do |format|
      if @bike_photo.update(bike_photo_params)
        format.html { redirect_to bike_photo_url(@bike_photo), notice: "Bike_photos was successfully updated." }
        format.json { render :show, status: :ok, location: @bike_photo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bike_photo.errors, status: :unprocessable_entity }
      end
    end 
  end

    # DELETE /posts/1 or /posts/1.json
    def destroy
      @bike_photo.destroy

    respond_to do |format|
      format.html { redirect_to bike_photos_url, notice: "Photo was successfully destroyed." }
      format.json { head :no_content }
    end
    end


    # POST /bikes or /bikes.json
    def create
      @bike_photo = BikePhoto.new(bike_photo_params)

      if @bike_photo.save
        redirect_to @bike_photo
      else
        render :new, status: :unprocessable_entity
      end
    
    end
    private
    def bike_photo_params 
      params.require(:bike_photo).permit(:image, :bike_id, :photo )
    end

    def set_bike_photo
      @bike_photo = BikePhoto.find(params[:id])
    end
end

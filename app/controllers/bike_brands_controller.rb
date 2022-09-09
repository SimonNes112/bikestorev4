class BikeBrandsController < ApplicationController
    before_action :set_bike_brand, only: %i[ show edit update destroy ]
  
    # GET /bikes or /bikes.json
    def index
      @bike_brands = BikeBrand.all
    end
  
    # GET /bikes/1 or /bikes/1.json
    def show
    end
  
    # GET /bikes/new
    def new
      @bike_brand = BikeBrand.new
    end
  
    # GET /bikes/1/edit
    def edit
    end

    def update
      respond_to do |format|
        if @bike_brand.update(bike_brand_params)
          format.html { redirect_to bike_brand_url(@bike_brand), notice: "Bike_brands was successfully updated." }
          format.json { render :show, status: :ok, location: @bike_brand }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @bike_brand.errors, status: :unprocessable_entity }
        end
      end 
    end

    # DELETE /posts/1 or /posts/1.json
    def destroy
      @bike_brand.destroy

    respond_to do |format|
      format.html { redirect_to bike_brands_url, notice: "Brand was successfully destroyed." }
      format.json { head :no_content }
    end
    end


    # POST /bikes or /bikes.json
    def create
      @bike_brand = BikeBrand.new(bike_brand_params)

      if @bike_brand.save
        redirect_to @bike_brand
      else
        render :new, status: :unprocessable_entity
      end
    
    end
    private
    def bike_brand_params 
      params.require(:bike_brand).permit(:image ,:name_brand, :logo, :delivery_condition, :email)
    end

    def set_bike_brand
      @bike_brand = BikeBrand.find(params[:id])
    end
end

class BikeModelsController < ApplicationController
        before_action :set_bike_model, only: %i[ show edit update destroy ]
      
        # GET /bikes or /bikes.json
        def index
          @bike_models = BikeModel.all
        end
      
        # GET /bikes/1 or /bikes/1.json
        def show
        end
      
        # GET /bikes/new
        def new
          @bike_model = BikeModel.new
          
        end
      
        # GET /bikes/1/edit
        def edit
        end
    
        # DELETE /posts/1 or /posts/1.json
        def destroy
          @bike_model.destroy
    
        respond_to do |format|
          format.html { redirect_to bike_models_url, notice: "Model was successfully destroyed." }
          format.json { head :no_content }
        end
        end
    
    
        # POST /bikes or /bikes.json
        def create
          @bike_model = BikeModel.new(bike_model_params)
    
          if @bike_model.save
            redirect_to @bike_model
          else
            render :new, status: :unprocessable_entity
          end
        
        end
        private
        def bike_model_params 
          params.require(:bike_model).permit(:models_name, :bike_brand_id, :bike_type_id)
        end
    
        def set_bike_model
          @bike_model = BikeModel.find(params[:id])
        end
    end


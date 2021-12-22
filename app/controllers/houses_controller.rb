class HousesController < ApplicationController
  before_action :set_house, only: %i[ show edit update destroy ]

  # GET /houses or /houses.json
  def index
    @houses = House.all
  end

  # GET /houses/1 or /houses/1.json
  def show
    @array = - 1
    @station_number = 1
  end

  # GET /houses/new
  def new
    @button_display = "登録する" 
    @house = House.new
    @house.near_stations.build
    
  end

  # GET /houses/1/edit
  def edit
    @button_display = "編集する"
    @house.near_stations.build
    @add_station = @house.near_stations.size - 1
    
    @num = 0
    @array = -1
    
  
  end

  # POST /houses or /houses.json
  def create
    @house = House.new(house_params)
    
    # @stations = @house.near_stations.build(house_params[:near_stations_attributes]['0'])
    
    respond_to do |format|
      if @house.save
        # @stations.save
        
        format.html { redirect_to @house, notice: "House was successfully created." }
        format.json { render :show, status: :created, location: @house }
      else
        @button_display = '登録する'
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @house.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /houses/1 or /houses/1.json
  def update
    
    respond_to do |format|
      if @house.update(house_params)
        
        format.html { redirect_to @house, notice: "House was successfully updated." }
        format.json { render :show, status: :ok, location: @house }
      else
        @button_display = '編集する'
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @house.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /houses/1 or /houses/1.json
  def destroy
    @house.destroy
    respond_to do |format|
      format.html { redirect_to houses_url, notice: "House was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_house
      @house = House.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def house_params
      params.require(:house).permit(:name,
                                    :rent,
                                    :residence,
                                    :built,
                                    :remarks,
                                    near_stations_attributes: %i[id station time_on_foot route_name]
                                  )
    end
end

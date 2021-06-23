class StationsController < ApplicationController
  before_action :get_place
  before_action :set_station, only: %i[ show edit update destroy ]

  # GET /stations or /stations.json
  def index
    @stations = @place.stations
  end

  # GET /stations/1 or /stations/1.json
  def show
  end

  # GET /stations/new
  def new
    @station = @place.stations.build
  end

  # GET /stations/1/edit
  def edit
  end

  # POST /stations or /stations.json
  def create
    @station = @place.stations.build(station_params)

    respond_to do |format|
      if @station.save
        format.html { redirect_to place_stations_url(@place), notice: "Station was successfully created." }
        format.json { render :show, status: :created, location: @station }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @station.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stations/1 or /stations/1.json
  def update
    respond_to do |format|
      if @station.update(station_params)
        format.html { redirect_to place_stations_url(@place), notice: "Station was successfully updated." }
        format.json { render :show, status: :ok, location: @station }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @station.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stations/1 or /stations/1.json
  def destroy
    @station.destroy
    respond_to do |format|
      format.html { redirect_to place_stations_url(@place), notice: "Station was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_station
      @station = @place.stations.find(params[:id])
    end

    def get_place
      @place=Place.find(params[:place_id])
    end
    # Only allow a list of trusted parameters through.
    def station_params
      params.require(:station).permit(:name_of_railway_line, :station_name, :how_many_mins_walk, :place_id)
    end
end

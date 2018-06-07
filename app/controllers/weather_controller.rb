class WeatherController < ApplicationController
  before_action :set_weather, only: [:show, :edit, :update, :destroy]

  # GET /weathers
  def index
    @weathers = []
  end

  # GET /weathers/1
  def show
    @notice = "#{@weather.city.titleize}, #{@weather.country.upcase}"
  end

  # GET /weathers/new
  def new
    @weather = Weather.new
  end

  # GET /weathers/1/edit
  def edit
  end

  # POST /weathers
  def create
    @weather = Weather.find_or_initialize_by(weather_params)

    if @weather.save
      @notice = "#{@weather.city.titleize}, #{@weather.country.upcase}"
      redirect_to @weather
    else
      render :new, errors: @weather.errors
    end
  end

  # PATCH/PUT /weathers/1
  def update
    if @weather.update(weather_params)
      redirect_to @weather, notice: "#{@weather.city.titleize}, #{@weather.country.upcase}"
    else
      render :edit
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weather
      @weather = Weather.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def weather_params
      params.require(:weather).permit(:city, :country)
    end
end

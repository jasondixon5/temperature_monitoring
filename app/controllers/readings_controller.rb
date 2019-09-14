class ReadingsController < ApplicationController
before_action :set_reading, only: [:show, :edit, :update, :destroy]

def index
    @readings = Reading.all
end

def show
end

def new
    @reading = Reading.new
end

def create
    @reading = Reading.new(reading_params)

    respond_to do |format|
      if @reading.save
        format.html { redirect_to @reading, notice: 'Reading was successfully created.' }
        format.json { render :show, status: :created, reading: @reading }
      else
        format.html { render :new }
        format.json { render json: @reading.errors, status: :unprocessable_entity }
      end
    end
  end


private
# Use callbacks to share common setup or constraints between actions.
def set_reading
@reading = Reading.find(params[:id])
end

# Never trust parameters from the scary internet, only allow the white list through.
def reading_params
params.require(:reading).permit(:temperature, :device_id)
end

end
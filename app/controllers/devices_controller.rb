class DevicesController < ApplicationController
    before_action :set_device, only: [:show, :edit, :update, :destroy]

    def index
        @devices = Device.all
    end

    def show
    end

    def edit
    end
    
    def new
        @device = Device.new
    end

    def create
        @device = Device.new(device_params)
    
        respond_to do |format|
          if @device.save
            format.html { redirect_to @device, notice: 'Device was successfully created.' }
            format.json { render :show, status: :created, device: @device }
          else
            format.html { render :new }
            format.json { render json: @device.errors, status: :unprocessable_entity }
          end
        end
      end
    
    def update
      respond_to do | format |
        if @device.update(device_params)
          format.html { redirect_to @device, notice: 'Device was successfully updated.' }
          format.json { render action: 'show', status: ok, location: @device }
        else
          format.html { render action: 'edit' }
          format.json { render json: @device.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @device.destroy
      respond_to do | format |
        format.html { redirect_to devices_url }
        format.json { head :no_content }
      end
    end
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_device
      @device = Device.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def device_params
      params.require(:device).permit(:id, :location_id)
    end
end

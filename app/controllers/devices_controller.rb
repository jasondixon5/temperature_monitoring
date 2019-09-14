class DevicesController < ApplicationController

    def new
    end

    def index
        @devices = Device.all
    end

end

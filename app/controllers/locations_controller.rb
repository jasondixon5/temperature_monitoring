class LocationsController < ApplicationController
    
    def new
    end

    def index
        @locations = Location.all
    end

    

end

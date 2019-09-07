class ReadingsController < ApplicationController
end

def index
    @readings = Reading.all
end

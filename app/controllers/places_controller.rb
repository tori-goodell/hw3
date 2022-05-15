class PlacesController < ApplicationController

    def index 
        @place = params["place"]
    end
end

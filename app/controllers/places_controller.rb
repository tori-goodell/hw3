class PlacesController < ApplicationController

    def index 
        @places = Place.all
    end

    def show
        @place = Place.find_by({ "id" => params["id"] })
        @posts = Post.where({ "place_id" => @place["id"] })
    end

    def new
        @place = Place.new
    end

    def create
        @place = Place.new
        @place["name"] = params["place"]["name"]
        @place["description"] = params["place"]["description"]
        @place["state"] = params["place"]["posted-on"]
        @place.save
        redirect_to "/places"
    end
end

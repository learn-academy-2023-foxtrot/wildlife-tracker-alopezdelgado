class AnimalSightingsController < ApplicationController
    def create
        sighting = AnimalSighting.create(sighting_params)
        if sighting.valid?
          render json: sighting
        else
          render json: sighting.errors
        end
      end
    
      private
      def sighting_params
        params.require(:animal_sighting).permit(:latitude, :longitude, :date)
      end
end

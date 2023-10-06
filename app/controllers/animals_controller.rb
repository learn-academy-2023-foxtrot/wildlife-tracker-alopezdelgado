class AnimalsController < ApplicationController
     def index
        animal = Animal.all 
        render json: animal 
     end 
     def create 
        animals = Animal.create(animals_params)
        if animals.valid?
            render json: animals 
        else 
            render json: animals.errors
        end 
     end 
     def update
        animals = Animal.find(params[:id])
        animals.update(animals_params)
        if animals.valid?
          render json: animals
        else
          render json: animals.errors
        end
      end
      def destroy
        animal = Animal.find(params[:id])
        if animal.destroy
          render json: animal
        else
          render json: animal.errors
        end
      end
     private 
     def animals_params 
        params.require(:animal).permit(:name, :scientific_binomial)
     end

end

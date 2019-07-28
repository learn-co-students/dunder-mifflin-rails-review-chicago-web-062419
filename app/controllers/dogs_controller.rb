class DogsController < ApplicationController
    
    def index
        @dogs = Dog.all
        @sorted_dogs = @dogs.sort_by { |dog| dog.name }

    end

    def show
        @dog = Dog.find(params[:id])
    end

    
end
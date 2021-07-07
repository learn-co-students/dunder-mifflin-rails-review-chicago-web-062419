class DogsController < ApplicationController
    #I Now Can Save Every Update Dan! 

    def index
        @dogs = Dog.all 
    end 

    def show
        @dog = Dog.find(params[:id])
    end 

end

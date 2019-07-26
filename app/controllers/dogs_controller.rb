class DogsController < ApplicationController
    before_action :find_dog, only: [:show]

    def index
        @dogs = Dog.all
        @sorted = @dogs.sort_by do |dog|
            -dog.employees.count
        end
    end

    def show
    end
    
    private

    def find_dog
        @dog = Dog.find_by(id: params[:id])
    end
end

class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.save
    redirect_to @dog
  end

  def new
    @dog = Dog.new
  end

  def show
    @dog = Dog.find_by(id: params[:id])
  end

  def update
    @dog = Dog.find_by(id: params[:id])
    @dog.update(dog_params)
    redirect_to @dog
  end

  def destroy
    @dog = Dog.find_by(id: params[:id])
    @dog.delete
    redirect_to @dog
  end

  def edit
    @dog = Dog.find_by(id: params[:id])
  end

  private

  def dog_params
    params.require(:dog).permit! #(:name, :breed, :age)
  end

end

class PetsController < ApplicationController
  def index
    pets = Pet.all
  end

  def show
    pet = Pet.find_by(id: params[:id])
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :age, :human)
  end
end

class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end
  
  def create
    @car = Car.new(car_params)
    # @car.user_id = current_user.id
    if @car.save
      redirect_to car_path(@car)
    else
      render 'new'
    end
  end

  private

  def car_params
    params.require(:car).permit(:brand, :car_type, :photo)
  end
end

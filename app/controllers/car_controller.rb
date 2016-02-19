class CarController < ApplicationController
  def new_car

    if !params.has_key?(:make) || !params.has_key?(:modelyear) ||  params[:make].strip.empty? || params[:modelyear].strip.empty?
      render "/car/new_car"
    else
      simulated_car = Car.new(params[:make], params[:modelyear], params[:description], params[:carcolor])
      cookies[:car] = simulated_car.to_yaml
      redirect_to "/simulator/do"
    end
  end
end

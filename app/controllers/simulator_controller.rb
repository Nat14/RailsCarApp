class SimulatorController < ApplicationController
  def do
    @car = YAML.load(cookies[:car])
  end

  def change_lights
    @car = YAML.load(cookies[:car])
    @car.light_toggle
    cookies[:car] = @car.to_yaml
    redirect_to '/simulator/do'
  end

  def speed_up
    @car = YAML.load(cookies[:car])
    @car.accelerate
    cookies[:car] = @car.to_yaml
    redirect_to '/simulator/do'
  end

  def brake
    @car = YAML.load(cookies[:car])
    @car.brake
    cookies[:car] = @car.to_yaml
    redirect_to '/simulator/do'
  end

  def parkingbrake
    @car = YAML.load(cookies[:car])
    @car.parkbrake(params[:parking_brake])
    cookies[:car] = @car.to_yaml
    redirect_to '/simulator/do'
  end

end

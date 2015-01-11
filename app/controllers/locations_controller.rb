class LocationsController < ApplicationController
  def cities
    if params[:division_id]
      division = Division.find(params[:division_id])
      cities = division.cities
    else
      cities = City.all
    end
    render :json => cities.collect { |city| {:id => city.id, :name => city.name} }
  end
end

class LocationsController < ApplicationController
  def districts
    if params[:division_id]
      division = Division.find(params[:division_id])
      @districts = division.districts
    else
      @districts = Division.all
    end
    render :json => @districts.collect { |district| {:id => district.id, :name => district.name} }
  end

  def thanas
    if params[:district_id]
      district = District.find(params[:district_id])
      @thanas = district.thanas
    else
      @thanas = District.all
    end
    render :json => @thanas.collect { |thana| {:id => thana.id, :name => thana.name} }
  end

end

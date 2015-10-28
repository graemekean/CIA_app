class CitiesController < ApplicationController

def index
  @cities = City.all
end

def show
  @city = City.find(params[:id])
end

def new
  @city = City.new
end

def create
  City.create(city_params)   #see the city_params from the private method below
  redirect_to(cities_path)
end

def destroy
  city = City.find(params[:id])  #doesn't need @ since it is not exposed - only being deleted
  city.destroy
  redirect_to(cities_path)
end

def edit
    @city = City.find(params[:id])

end

def update
  city = City.find(params[:id]) #again - the data does not need to be exposed - no @
  city.update(city_params) #from the private method below - whitelist check
  redirect_to(cities_path)
end  

private
def city_params
  # allows these params to be accessed by the methods above
  params.require(:city).permit(:name, :population, :country_id)
end

end
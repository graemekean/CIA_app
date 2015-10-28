class CountriesController < ApplicationController

def index
  @countries = Country.all
  #@countries.sort!{ |a,b| a.name.downcase <=> b.name.downcase }
  #@country = Country.find(params[:id])
end

def show
  @country = Country.find(params[:id])
end

def new
  @country = Country.new
end

def create
  Country.create(country_params)   #see the team_params from the private method below
  redirect_to(countries_path)
end

def destroy
  country = Country.find(params[:id])  #doesn't need @ since it is not exposed - only being deleted
  country.destroy
  redirect_to(countries_path)
end

def edit
    @country = Country.find(params[:id])

end

def update
  country = Country.find(params[:id]) #again - the data does not need to be exposed - no @
  country.update(country_params) #from the private method below - whitelist check
  redirect_to(countries_path)
end  

private
def country_params
  # allows these params to be accessed by the methods above
  params.require(:country).permit(:name, :flag_image, :size, :gdp, :population, :language, :currency, :literacy_rate, :governing_party)
end

end
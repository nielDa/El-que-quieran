class CitiesController < ApplicationController
 def main
  @cities = Citie.all
 end
 def new
  @citie = Citie.new
 end
 def create
  Citie.create(params[:citie])
  redirect_to "/cities"
 end
 def delete
  Citie.find(params[:id]).delete
  redirect_to "/cities"
 end
 def edit
  @citie = Citie.find(params[:id])
 end
 def update
  @citie = Citie.find(params[:id])
  @citie.update_atributes(params[:citie])
  redirct_to "/cities"
 end
end

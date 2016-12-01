class DinosaursController < ApplicationController
# action for the main page
  def index
    @dinosaurs = Dinosaur.all
  end
#action for showing the single dino page
  def show
    @dinosaur = Dinosaur.find(params[:id])
  end

# ???"new" action method for creating a new dino (instance/object)
  def new
   @dinosaur = Dinosaur.new
 end

# action for populating a new record
 def create
    dinosaur_params = params.require( :dinosaur ).permit( :name, :age, :image_url )

    @dinosaur = Dinosaur.new( dinosaur_params )

    if @dinosaur.save
       redirect_to @dinosaur
    else
       render 'new'
    end
  end

end

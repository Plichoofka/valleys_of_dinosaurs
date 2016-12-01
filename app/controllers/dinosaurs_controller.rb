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
# # method for editing an already existing record
  def edit
  @dinosaur = Dinosaur.find(params[:id])
end

# method to update a single dinosaur

def update
  @dinosaur = Dinosaur.find( params[:id] )

  dinosaur_params = params.require( :dinosaur ).permit( :name, :age, :image_url )

  if @dinosaur.update_attributes( dinosaur_params )
     redirect_to @dinosaur
  else
     render 'edit'
  end
end

# # Refactor the common code for dinosaur params into a private method.
# # squeezing 2 loops into one
#
# private
#
#   def dinosaur_params
#     params.require(:dinosaur).permit(:name, :age, :image_url)
#   end
# mathod for deleting a dinosaur
def destroy
   @dinosaur = Dinosaur.find(params[:id])

   @dinosaur.destroy

   redirect_to dinosaurs_path
 end

end

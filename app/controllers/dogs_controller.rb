class DogsController < ApplicationController
    def index
      render json: Dog.all
     end
  
    def show
      render json: Dog.find(params[:id])
    end
  
    def new
      @dog = Dog.new
    end
  
    def create
      @dog = Dog.new(Dog_params)
      if @dog.save
  
        redirect_to Dogs_path
      else
        flash[:errors] = @Dog.errors.full_messages
        render 'new'
    end
   end
  
    private
  
    def dog_params
      params.require(:dog).permit(:name, :age, :breed, :person_id)
    end
end
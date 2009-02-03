class DogsController < ApplicationController

  def index
    @dogs = Dog.find(:all)
  end


  def show
    @dog = Dog.find(params[:id])
  end


  def new
    @dog = Dog.new
  end


  def create
    @dog = Dog.new params[:dog]

    if @dog.save
      flash[:notice] = 'Dog was successfully created.'
      redirect_to(@dog)
    else
      render :action => "new"
    end
  end
  
end

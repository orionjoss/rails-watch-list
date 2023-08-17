class ListsController < ApplicationController
  def index
    @lists = List.all
    #it's a class method
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    # make an instance of list
  # save the instance of the list in the db
   # redirect the user to the index page
    @list = List.new(list_params)
    if @list.save
      redirect_to @list, notice: 'List created with success.'
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  private

  def list_params
    params.require(:list).permit(:name)
  end

end

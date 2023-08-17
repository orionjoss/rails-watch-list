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

    @list = List.new(list_params)
    # save the instance of the list in the db


    # redirect the user to the index page
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

end

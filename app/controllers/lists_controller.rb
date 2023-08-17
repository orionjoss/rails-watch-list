class ListsController < ApplicationController
  def index
    @lists = List.all
    #it's a class method
  end
end

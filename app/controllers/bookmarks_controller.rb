class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  # {"authenticity_token"=>"[FILTERED]", "bookmark"=>{"comment"=>"khsbjhbsjkhbs ", "movie_id"=>"3"}, "commit"=>"Create Bookmark", "list_id"=>"13"}

  def create
    # make an instance of the bookmark
    # save that instance
    # redirect to list show page
    @bookmark = Bookmark.new(params.require(:bookmark).permit(:comment, :movie_id))
  end
end

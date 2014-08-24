class SearchController < ApplicationController
  def index

  end

  def search

    @search = search_params[:text]
    results = Flickr.search(search_params)
    @pagination_info = results[:pagination_info]
    @photos = results[:photos]

    if @photos.size > 0
      render 'results'
    else
      render 'no_results'
    end

  end

  private

  def search_params
    params.require(:search).permit(:text)
  end
end

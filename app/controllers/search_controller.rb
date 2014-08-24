class SearchController < ApplicationController
  
  before_filter :validate_search_query, :only => :search
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
    params.require(:search).permit(:text, :page)
  end

  def validate_search_query
    if search_params[:text].blank?
      flash[:notice] = "You have entered an empty query, please type in something."
      render 'no_results'
    end
  end
end

class SearchController < ApplicationController
  def index

  end

  def search
    @search = search_params[:searchtext]

    if search_params[:searchtext].blank?
      render 'no_results'

    else
      render 'results'
    end

  end

  private

  def search_params
    params.require(:search).permit(:searchtext)
  end
end

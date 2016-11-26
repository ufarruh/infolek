class SearchesController < ApplicationController
  def show
    if params[:q].present?
      @search = Drug.search(params[:q].split.join(' AND '))
    else
      @search = []
    end
  end
end

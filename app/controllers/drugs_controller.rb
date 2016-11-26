class DrugsController < ApplicationController
  def index
  end

  def show
    @drug = Drug.find(params[:id])
  end
end

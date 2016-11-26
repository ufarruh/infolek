class DrugsController < ApplicationController

  def index
    @q = Drug.ransack(params[:q])
    @drugs = @q.result
  end

  def show
    @drug = Drug.find(params[:id])
    @pharmacies = @drug.pharmacies.limit(10)
  end
end

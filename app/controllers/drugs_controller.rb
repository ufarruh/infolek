class DrugsController < ApplicationController
  def index
    @q = Drug.ransack(params[:q])
    @drugs = @q.result
  end
end

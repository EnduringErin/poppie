class CompetenciesController < ApplicationController
  def index
  	# @competency = Competency.all
  end

  def new
  	
  end

  def create
  	render plain: params[:competency].inspect
  end

end

class CompetenciesController < ApplicationController
  def index
  	@competencies = Competency.all
  end

  def new
  	@competency = Competency.new
  end

  def create
  	@competency = Competency.new(competency_params)

  	if @competency.save
  		redirect_to @competency
  	else
  		render 'new'
  	end
  end

  def show
  	@competency = Competency.find(params[:id])
  end

  def edit
  	@competency = Competency.find(params[:id])
  end

  def update
  	@competency = Competency.find(params[:id])

  	if @competency.update(competency_params)
  		redirect_to @competency
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@competency = Competency.find(params[:id])
  	@competency.destroy

  	redirect_to competencies_path
  end

  private
	  def competency_params
	  	params.require(:competency).permit(:competency, :european_credit, :level)
	  end

end

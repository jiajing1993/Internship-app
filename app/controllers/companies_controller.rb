class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to root_path
    else
      render 'new'
    end
  end


  private
  def company_params
    params.require(:company).permit(:name, :company_type, :description, :city, :state, :website)
  end
end

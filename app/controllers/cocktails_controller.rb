class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit]

  def new
    @cocktail = Cocktail.new
  end

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def edit
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end

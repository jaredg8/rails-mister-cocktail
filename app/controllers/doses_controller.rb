class DosesController < ApplicationController
  before_action :set_dose, only: [:destroy]

  # GET /doses

  # GET /doses/new
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  # POST /doses
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params.merge(cocktail: @cocktail))

    if @dose.save
      redirect_to @cocktail, notice: 'Dose was successfully created.'
    else
      render :new
    end
  end

  # DELETE /doses/1
  def destroy
    @dose.destroy
    redirect_to @dose.cocktail, notice: 'Dose was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dose
      @dose = Dose.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dose_params
      params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
    end
end

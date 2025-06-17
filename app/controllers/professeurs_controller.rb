class ProfesseursController < ApplicationController
  before_action :set_professeur, only: %i[ show edit update destroy ]

  # GET /professeurs or /professeurs.json
  def index
    @professeurs = Professeur.all
  end

  # GET /professeurs/1 or /professeurs/1.json
  def show
  end

  # GET /professeurs/new
  def new
    @professeur = Professeur.new
  end

  # GET /professeurs/1/edit
  def edit
  end

  # POST /professeurs or /professeurs.json
  def create
    @professeur = Professeur.new(professeur_params)

    respond_to do |format|
      if @professeur.save
        format.html { redirect_to @professeur, notice: "Professeur was successfully created." }
        format.json { render :show, status: :created, location: @professeur }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @professeur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /professeurs/1 or /professeurs/1.json
  def update
    respond_to do |format|
      if @professeur.update(professeur_params)
        format.html { redirect_to @professeur, notice: "Professeur was successfully updated." }
        format.json { render :show, status: :ok, location: @professeur }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @professeur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /professeurs/1 or /professeurs/1.json
  def destroy
    @professeur.destroy!

    respond_to do |format|
      format.html { redirect_to professeurs_path, status: :see_other, notice: "Professeur was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professeur
      @professeur = Professeur.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def professeur_params
      params.expect(professeur: [ :nom_professeur, :date_naissance, :numero_telephone, :email ])
    end
end

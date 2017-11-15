class RegistrersController < ApplicationController
  before_action :set_registrer, only: [:show, :edit, :update, :destroy]

  # GET /registrers
  # GET /registrers.json
  def index
    @registrers = Registrer.all
  end

  # GET /registrers/1
  # GET /registrers/1.json
  def show
  end

  # GET /registrers/new
  def new
    @registrer = Registrer.new
  end

  # GET /registrers/1/edit
  def edit
  end

  # POST /registrers
  # POST /registrers.json
  def create
    @registrer = Registrer.new(registrer_params)

    respond_to do |format|
      if @registrer.save
        format.html { redirect_to @registrer, notice: 'Registrer was successfully created.' }
        format.json { render :show, status: :created, location: @registrer }
      else
        format.html { render :new }
        format.json { render json: @registrer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registrers/1
  # PATCH/PUT /registrers/1.json
  def update
    respond_to do |format|
      if @registrer.update(registrer_params)
        format.html { redirect_to @registrer, notice: 'Registrer was successfully updated.' }
        format.json { render :show, status: :ok, location: @registrer }
      else
        format.html { render :edit }
        format.json { render json: @registrer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registrers/1
  # DELETE /registrers/1.json
  def destroy
    @registrer.destroy
    respond_to do |format|
      format.html { redirect_to registrers_url, notice: 'Registrer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registrer
      @registrer = Registrer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registrer_params
      params.require(:registrer).permit(:registration, :name, :course, :module, :date_of_registration)
    end
end

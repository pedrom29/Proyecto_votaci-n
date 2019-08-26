class ParliamentariesController < ApplicationController
  before_action :set_parliamentary, only: [:show, :edit, :update, :destroy]

  # GET /parliamentaries
  # GET /parliamentaries.json
  def index
    @parliamentaries = Parliamentary.all
  end

  def district
    district = District.find(params[:district_id]) 
  end

  # GET /parliamentaries/1
  # GET /parliamentaries/1.json
  def show
  end

  # GET /parliamentaries/new
  def new
    @parliamentary = Parliamentary.new
  end

  # GET /parliamentaries/1/edit
  def edit
  end

  # POST /parliamentaries
  # POST /parliamentaries.json
  def create
    @parliamentary = Parliamentary.new(parliamentary_params)

    respond_to do |format|
      if @parliamentary.save
        format.html { redirect_to @parliamentary, notice: 'Parliamentary was successfully created.' }
        format.json { render :show, status: :created, location: @parliamentary }
      else
        format.html { render :new }
        format.json { render json: @parliamentary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parliamentaries/1
  # PATCH/PUT /parliamentaries/1.json
  def update
    respond_to do |format|
      if @parliamentary.update(parliamentary_params)
        format.html { redirect_to @parliamentary, notice: 'Parliamentary was successfully updated.' }
        format.json { render :show, status: :ok, location: @parliamentary }
      else
        format.html { render :edit }
        format.json { render json: @parliamentary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parliamentaries/1
  # DELETE /parliamentaries/1.json
  def destroy
    @parliamentary.destroy
    respond_to do |format|
      format.html { redirect_to parliamentaries_url, notice: 'Parliamentary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parliamentary
      @parliamentary = Parliamentary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parliamentary_params
      params.require(:parliamentary).permit(:name, :political_party, :birthdate, :district_id)
    end
end

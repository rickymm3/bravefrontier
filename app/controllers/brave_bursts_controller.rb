class BraveBurstsController < ApplicationController
  before_action :set_brave_burst, only: [:show, :edit, :update, :destroy]

  # GET /brave_bursts
  # GET /brave_bursts.json
  def index
    @brave_bursts = BraveBurst.all
  end

  # GET /brave_bursts/1
  # GET /brave_bursts/1.json
  def show
  end

  # GET /brave_bursts/new
  def new
    @brave_burst = BraveBurst.new
  end

  # GET /brave_bursts/1/edit
  def edit
  end

  # POST /brave_bursts
  # POST /brave_bursts.json
  def create
    @brave_burst = BraveBurst.new(brave_burst_params)

    respond_to do |format|
      if @brave_burst.save
        format.html { redirect_to @brave_burst, notice: 'Brave burst was successfully created.' }
        format.json { render action: 'show', status: :created, location: @brave_burst }
      else
        format.html { render action: 'new' }
        format.json { render json: @brave_burst.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brave_bursts/1
  # PATCH/PUT /brave_bursts/1.json
  def update
    respond_to do |format|
      if @brave_burst.update(brave_burst_params)
        format.html { redirect_to @brave_burst, notice: 'Brave burst was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @brave_burst.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brave_bursts/1
  # DELETE /brave_bursts/1.json
  def destroy
    @brave_burst.destroy
    respond_to do |format|
      format.html { redirect_to brave_bursts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brave_burst
      @brave_burst = BraveBurst.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brave_burst_params
      params.require(:brave_burst).permit(:id, :name, :num_hits, :element)
    end
end

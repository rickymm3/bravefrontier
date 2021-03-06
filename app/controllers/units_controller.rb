class UnitsController < ApplicationController
  before_action :set_unit, only: [:show, :edit, :update, :destroy]
  #impressionist :actions=>[:show,:index],:unique => [:impressionable_type, :impressionable_id, :session_hash]

  # GET /units
  # GET /units.json
  def index
    @elements = Element.all
    filters = get_filters(params[:filters])
    @search_phrase = get_search_phrase(params[:search])
    @units = Unit.search(@search_phrase, params[:page], filters).order('no')
    respond_to do |format|
      format.html
      format.js {render layout: false}
    end
  end

  # GET /units/1
  # GET /units/1.json
  def show
    @materials = Material.where(unit_id:@unit.id)
  end

  # GET /units/new
  def new
    @unit = Unit.new
  end

  # GET /units/1/edit
  def edit
  end

  # POST /units
  # POST /units.json
  def create
    @unit = Unit.new(unit_params)

    respond_to do |format|
      if @unit.save
        format.html { redirect_to @unit, notice: 'Unit was successfully created.' }
        format.json { render action: 'show', status: :created, location: @unit }
      else
        format.html { render action: 'new' }
        format.json { render json: @unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /units/1
  # PATCH/PUT /units/1.json
  def update
    respond_to do |format|
      if @unit.update(unit_params)
        format.html { redirect_to @unit, notice: 'Unit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /units/1
  # DELETE /units/1.json
  def destroy
    @unit.destroy
    respond_to do |format|
      format.html { redirect_to units_url }
      format.json { head :no_content }
    end
  end

  private

  def get_filters(filters=nil)
    if filters
      JSON.parse(filters)
    else
      filters
    end
  end

  def get_search_phrase(search=nil)
    if search
      search
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_unit
    @unit = Unit.friendly.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def unit_params
    params.require(:unit).permit(:realname, :name, :prefix, :description, :no, :cost, :element_id, :rarity_id, :max_lvl, :cost, :base_hp, :base_atk, :base_def, :base_rec, :ls_id, :bb_id, :numhits)
  end
end

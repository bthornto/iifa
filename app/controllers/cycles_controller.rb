class CyclesController < ApplicationController
  require 'pp'
  before_action :set_cycle, only: [:show, :edit, :update, :destroy]

  # GET /cycles
  # GET /cycles.json
  def index
    @cycles = Cycle.all
  end

  def dt
  end

  def getall
    cycles = Cycle.all
    hash = Hash.new
    hash[:data] = []
    cycles.each do |cycle|
      temp_array = []
      temp_array << cycle.date.strftime("%m/%d/%Y")
      if cycle.flavor then temp_array << cycle.flavor.name else temp_array << "unknown" end
      if cycle.size then temp_array << cycle.size.size else temp_array << "unknown" end
      temp_array << cycle.quantity
      temp_array << cycle.location.name
      hash[:data] << temp_array
    end
    render json: hash
  end

  # GET /cycles/1
  # GET /cycles/1.json
  def show
  end

  # GET /cycles/new
  def new
    @cycle = Cycle.new
  end

  # GET /cycles/1/edit
  def edit
  end

  # POST /cycles
  # POST /cycles.json
  def create
    @cycle = Cycle.new(cycle_params)

    respond_to do |format|
      if @cycle.save
        format.html { redirect_to @cycle, notice: 'Cycle was successfully created.' }
        format.json { render :show, status: :created, location: @cycle }
      else
        format.html { render :new }
        format.json { render json: @cycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cycles/1
  # PATCH/PUT /cycles/1.json
  def update
    respond_to do |format|
      if @cycle.update(cycle_params)
        format.html { redirect_to @cycle, notice: 'Cycle was successfully updated.' }
        format.json { render :show, status: :ok, location: @cycle }
      else
        format.html { render :edit }
        format.json { render json: @cycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cycles/1
  # DELETE /cycles/1.json
  def destroy
    @cycle.destroy
    respond_to do |format|
      format.html { redirect_to cycles_url, notice: 'Cycle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cycle
      @cycle = Cycle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cycle_params
      params.require(:cycle).permit(:date, :user_id, :flavor_id, :size_id, :quantity, :defect_type_id, :defect_types, :cavity_number, :job_number, :shift, :location_id)
    end
end

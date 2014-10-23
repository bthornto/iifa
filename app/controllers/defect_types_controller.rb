class DefectTypesController < ApplicationController
  before_action :set_defect_type, only: [:show, :edit, :update, :destroy]

  # GET /defect_types
  # GET /defect_types.json
  def index
    @defect_types = DefectType.all
  end

  # GET /defect_types/1
  # GET /defect_types/1.json
  def show
  end

  # GET /defect_types/new
  def new
    @defect_type = DefectType.new
  end

  # GET /defect_types/1/edit
  def edit
  end

  # POST /defect_types
  # POST /defect_types.json
  def create
    @defect_type = DefectType.new(defect_type_params)

    respond_to do |format|
      if @defect_type.save
        format.html { redirect_to @defect_type, notice: 'Defect type was successfully created.' }
        format.json { render :show, status: :created, location: @defect_type }
      else
        format.html { render :new }
        format.json { render json: @defect_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /defect_types/1
  # PATCH/PUT /defect_types/1.json
  def update
    respond_to do |format|
      if @defect_type.update(defect_type_params)
        format.html { redirect_to @defect_type, notice: 'Defect type was successfully updated.' }
        format.json { render :show, status: :ok, location: @defect_type }
      else
        format.html { render :edit }
        format.json { render json: @defect_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /defect_types/1
  # DELETE /defect_types/1.json
  def destroy
    @defect_type.destroy
    respond_to do |format|
      format.html { redirect_to defect_types_url, notice: 'Defect type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_defect_type
      @defect_type = DefectType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def defect_type_params
      params.require(:defect_type).permit(:name, :sbuxid)
    end
end

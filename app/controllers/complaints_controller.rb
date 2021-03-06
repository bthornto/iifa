class ComplaintsController < ApplicationController
  before_action :set_complaint, only: [:show, :edit, :update, :destroy]

  # GET /complaints
  # GET /complaints.json
  def index
    @complaints = Complaint.all
  end

  # GET /complaints/1
  # GET /complaints/1.json
  def show
  end

def getall
    complaints = Complaint.all
    hash = Hash.new
    hash[:data] = []
    complaints.each do |complaint|
      temp_array = []
      temp_array << complaint.id
      temp_array << complaint.date.strftime("%m/%d/%Y")
      temp_array << complaint.product
      temp_array << complaint.reason
      temp_array << complaint.synopsis
      temp_array << complaint.notes
      temp_array << complaint.store_number
      temp_array << complaint.store_name
      temp_array << complaint.city
      temp_array << complaint.state
      temp_array << complaint.coding_level2
      temp_array << complaint.brand_code
      temp_array << complaint.brand
      temp_array << complaint.ownership_type
      temp_array << complaint.duplicate
      hash[:data] << temp_array
    end
    render json: hash
  end

  # GET /complaints/new
  def new
    @complaint = Complaint.new
  end

  # GET /complaints/1/edit
  def edit
  end

  # POST /complaints
  # POST /complaints.json
  def create
    @complaint = Complaint.new(complaint_params)

    respond_to do |format|
      if @complaint.save
        format.html { redirect_to @complaint, notice: 'Complaint was successfully created.' }
        format.json { render :show, status: :created, location: @complaint }
      else
        format.html { render :new }
        format.json { render json: @complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /complaints/1
  # PATCH/PUT /complaints/1.json
  def update
    respond_to do |format|
      if @complaint.update(complaint_params)
        format.html { redirect_to @complaint, notice: 'Complaint was successfully updated.' }
        format.json { render :show, status: :ok, location: @complaint }
      else
        format.html { render :edit }
        format.json { render json: @complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complaints/1
  # DELETE /complaints/1.json
  def destroy
    @complaint.destroy
    respond_to do |format|
      format.html { redirect_to complaints_url, notice: 'Complaint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complaint
      @complaint = Complaint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def complaint_params
      params.require(:complaint).permit(:date, :product, :reason, :synopsis, :notes, :store_number, :store_name, :city, :state, :coding_level2, :brand_code, :brand, :ownership_type, :duplicate)
    end
end

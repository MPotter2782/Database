class PartNamesController < ApplicationController
  before_action :set_part_name, only: [:show, :edit, :update, :destroy]

  # GET /part_names
  # GET /part_names.json
  def index
    @part_names = PartName.all
  end

  # GET /part_names/1
  # GET /part_names/1.json
  def show
  end

  # GET /part_names/new
  def new
    @part_name = PartName.new
  end

  # GET /part_names/1/edit
  def edit
  end

  # POST /part_names
  # POST /part_names.json
  def create
    @part_name = PartName.new(part_name_params)

    respond_to do |format|
      if @part_name.save
        format.html { redirect_to @part_name, notice: 'Part name was successfully created.' }
        format.json { render :show, status: :created, location: @part_name }
      else
        format.html { render :new }
        format.json { render json: @part_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /part_names/1
  # PATCH/PUT /part_names/1.json
  def update
    respond_to do |format|
      if @part_name.update(part_name_params)
        format.html { redirect_to @part_name, notice: 'Part name was successfully updated.' }
        format.json { render :show, status: :ok, location: @part_name }
      else
        format.html { render :edit }
        format.json { render json: @part_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /part_names/1
  # DELETE /part_names/1.json
  def destroy
    @part_name.destroy
    respond_to do |format|
      format.html { redirect_to part_names_url, notice: 'Part name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_part_name
      @part_name = PartName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def part_name_params
      params.require(:part_name).permit(:name, :part_kinds_id)
    end
end

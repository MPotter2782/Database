class PartKindsController < ApplicationController
  before_action :set_part_kind, only: [:show, :edit, :update, :destroy]

  # GET /part_kinds
  # GET /part_kinds.json
  def index
    @part_kinds = PartKind.all
  end

  # GET /part_kinds/1
  # GET /part_kinds/1.json
  def show
  end

  # GET /part_kinds/new
  def new
    @part_kind = PartKind.new
  end

  # GET /part_kinds/1/edit
  def edit
  end

  # POST /part_kinds
  # POST /part_kinds.json
  def create
    @part_kind = PartKind.new(part_kind_params)

    respond_to do |format|
      if @part_kind.save
        format.html { redirect_to @part_kind, notice: 'Part kind was successfully created.' }
        format.json { render :show, status: :created, location: @part_kind }
      else
        format.html { render :new }
        format.json { render json: @part_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /part_kinds/1
  # PATCH/PUT /part_kinds/1.json
  def update
    respond_to do |format|
      if @part_kind.update(part_kind_params)
        format.html { redirect_to @part_kind, notice: 'Part kind was successfully updated.' }
        format.json { render :show, status: :ok, location: @part_kind }
      else
        format.html { render :edit }
        format.json { render json: @part_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /part_kinds/1
  # DELETE /part_kinds/1.json
  def destroy
    @part_kind.destroy
    respond_to do |format|
      format.html { redirect_to part_kinds_url, notice: 'Part kind was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_part_kind
      @part_kind = PartKind.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def part_kind_params
      params.require(:part_kind).permit(:kind)
    end
end

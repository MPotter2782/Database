class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]

  # GET /entries
  # GET /entries.json
  def index
    @entries = Entry.all
  end

  # GET /entries/1
  # GET /entries/1.json
  def show
    @category = Category.find(params[:category_id])
  end

  # GET /entries/new
  def new
    @entry = Entry.new
  end

  # GET /entries/1/edit
  def edit
    @category = Category.find(params[:category_id])
  end

  # POST /entries
  # POST /entries.json
  def create
    @category = Category.find(params[:category_id])
    @entry = @category.entries.create(entry_params)
    redirect_to category_path(@category)
  end

  # PATCH/PUT /entries/1
  # PATCH/PUT /entries/1.json
  def update
    @entry = Entry.find(params[:id])
    if @entry.update_attributes(entry_params)
      redirect_to category_path
      # Handle a successful update.
    else
      render 'edit'
    end
  end

  # DELETE /entries/1
  # DELETE /entries/1.json
  def destroy
    @entry.destroy
    respond_to do |format|
      format.html { redirect_to entries_url, notice: 'Entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry
      @entry = Entry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_params
    params.require(:entry).permit(:name, :quantity, :price)
    end

    def entry_param
    params(:entry).permit(:name, :quantity, :price)
    end
end
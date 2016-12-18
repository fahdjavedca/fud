class FudEntriesController < ApplicationController
  before_action :set_fud_entry, only: [:show, :edit, :update, :destroy]

  # GET /fud_entries
  # GET /fud_entries.json
  def index
    @fud_entries = FudEntry.all
  end

  # GET /fud_entries/1
  # GET /fud_entries/1.json
  def show
  end

  # GET /fud_entries/new
  def new
    @fud_entry = FudEntry.new
  end

  # GET /fud_entries/1/edit
  def edit
  end

  # POST /fud_entries
  # POST /fud_entries.json
  def create
    @fud_entry = FudEntry.new(fud_entry_params)

    respond_to do |format|
      if @fud_entry.save
        format.html { redirect_to @fud_entry, notice: 'Fud entry was successfully created.' }
        format.json { render :show, status: :created, location: @fud_entry }
      else
        format.html { render :new }
        format.json { render json: @fud_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fud_entries/1
  # PATCH/PUT /fud_entries/1.json
  def update
    respond_to do |format|
      if @fud_entry.update(fud_entry_params)
        format.html { redirect_to @fud_entry, notice: 'Fud entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @fud_entry }
      else
        format.html { render :edit }
        format.json { render json: @fud_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fud_entries/1
  # DELETE /fud_entries/1.json
  def destroy
    @fud_entry.destroy
    respond_to do |format|
      format.html { redirect_to fud_entries_url, notice: 'Fud entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fud_entry
      @fud_entry = FudEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fud_entry_params
      params.require(:fud_entry).permit(:fud, :anonymous)
    end
end

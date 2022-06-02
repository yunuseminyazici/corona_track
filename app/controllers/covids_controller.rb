class CovidsController < ApplicationController
 
  before_action :set_covid, only: %i[ show edit update destroy ]
  # GET /covids or /covids.json

  def index
    if params[:covid] and params[:covid][:id]
      @covids=Covid.search(params[:covid][:id])

    elsif params[:covid] and params[:covid][:BL]
      @covids=Covid.search1(params[:covid][:BL])
      #@covids = Covid.where("created_at LIKE ? AND BL LIKE ?","%#{@tarih}%","%#{params[:covid][:BL]}%")

    elsif params[:created_at]
      @covids=Covid.search2(params[:created_at])
      #@tarih=params[:created_at]
    else
      #@covids = Covid.where("created_at LIKE ? AND BL LIKE ?","%2022-05-23%","Hamburg")
      @covids = Covid.all
    #elsif params[:created_at]
      #@covids = Covid.where("created_at LIKE ?","%#{params[:created_at]}%")
    end
  end

=begin
  def index
    if params[:covid] and params[:covid][:id]
      @covids=Covid.where("id LIKE ?","#{params[:covid][:id]}")
    else
      @covids = Covid.all
    end
  end
=end


  # GET /covids/1 or /covids/1.json
  def show
  end

  # GET /covids/new
  def new
    @covid = Covid.new
  end

  # GET /covids/1/edit
  def edit
  end

  # POST /covids or /covids.json
  def create
    @covid = Covid.new(covid_params)

    respond_to do |format|
      if @covid.save
        format.html { redirect_to covid_url(@covid), notice: "Covid was successfully created." }
        format.json { render :show, status: :created, location: @covid }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @covid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /covids/1 or /covids/1.json
  def update
    respond_to do |format|
      if @covid.update(covid_params)
        format.html { redirect_to covid_url(@covid), notice: "Covid was successfully updated." }
        format.json { render :show, status: :ok, location: @covid }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @covid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /covids/1 or /covids/1.json
  def destroy
    @covid.destroy

    respond_to do |format|
      format.html { redirect_to covids_url, notice: "Covid was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_covid
      @covid = Covid.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def covid_params
      params.require(:covid).permit(:GEN, :BEN, :death_rate, :cases7_per_100k,
      :cases7_bl_per_100k, :picked_date)
    end
end


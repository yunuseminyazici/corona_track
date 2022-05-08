class MytablesController < ApplicationController
  before_action :set_mytable, only: %i[ show edit update destroy ]

  # GET /mytables or /mytables.json
  def index
    @mytables = Mytable.all
  end

  # GET /mytables/1 or /mytables/1.json
  def show
  end

  # GET /mytables/new
  def new
    @mytable = Mytable.new
  end

  # GET /mytables/1/edit
  def edit
  end

  # POST /mytables or /mytables.json
  def create
    @mytable = Mytable.new(mytable_params)

    respond_to do |format|
      if @mytable.save
        format.html { redirect_to mytable_url(@mytable), notice: "Mytable was successfully created." }
        format.json { render :show, status: :created, location: @mytable }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mytable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mytables/1 or /mytables/1.json
  def update
    respond_to do |format|
      if @mytable.update(mytable_params)
        format.html { redirect_to mytable_url(@mytable), notice: "Mytable was successfully updated." }
        format.json { render :show, status: :ok, location: @mytable }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mytable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mytables/1 or /mytables/1.json
  def destroy
    @mytable.destroy

    respond_to do |format|
      format.html { redirect_to mytables_url, notice: "Mytable was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mytable
      @mytable = Mytable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mytable_params
      params.require(:mytable).permit(:first_name, :last_name, :email, :twitter)
    end
end

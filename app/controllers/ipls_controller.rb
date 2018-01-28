class IplsController < ApplicationController
  before_action :set_ipl, only: [:show, :edit, :update, :destroy]

  # GET /ipls
  # GET /ipls.json
  def index
    @ipls = Ipl.all
  end

  # GET /ipls/1
  # GET /ipls/1.json
  def show
  end

  # GET /ipls/new
  def new
    @ipl = Ipl.new
  end

  # GET /ipls/1/edit
  def edit
  end

  # POST /ipls
  # POST /ipls.json
  def create
    @ipl = Ipl.new(ipl_params)

    respond_to do |format|
      if @ipl.save
        format.html { redirect_to @ipl, notice: 'Ipl was successfully created.' }
        format.json { render :show, status: :created, location: @ipl }
      else
        format.html { render :new }
        format.json { render json: @ipl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ipls/1
  # PATCH/PUT /ipls/1.json
  def update
    respond_to do |format|
      if @ipl.update(ipl_params)
        format.html { redirect_to @ipl, notice: 'Ipl was successfully updated.' }
        format.json { render :show, status: :ok, location: @ipl }
      else
        format.html { render :edit }
        format.json { render json: @ipl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ipls/1
  # DELETE /ipls/1.json
  def destroy
    @ipl.destroy
    respond_to do |format|
      format.html { redirect_to ipls_url, notice: 'Ipl was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ipl
      @ipl = Ipl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ipl_params
      params.require(:ipl).permit(:p_name, :price, :ptype)
    end
end

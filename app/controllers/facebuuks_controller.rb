class FacebuuksController < ApplicationController
  before_action :set_facebuuk, only: [:show, :edit, :update, :destroy]

  # GET /facebuuks
  # GET /facebuuks.json
  def index
    @facebuuks = Facebuuk.all
  end

  # GET /facebuuks/1
  # GET /facebuuks/1.json
  def show
  end

  # GET /facebuuks/new
  def new
     if params[:back]
      @facebuuk = Facebuuk.new(facebuuk_params)
     else
      @facebuuk = Facebuuk.new
     end
  end

  # GET /facebuuks/1/edit
  def edit
  end

  # POST /facebuuks
  # POST /facebuuks.json
  def create
     @facebuuk = Facebuuk.new(facebuuk_params)
     @facebuuk.users_id = current_user.id
    respond_to do |format|
      if @facebuuk.save
        format.html { redirect_to @facebuuk, notice: 'Facebuuk was successfully created.' }
        format.json { render :show, status: :created, location: @facebuuk }
      else
        format.html { render :new }
        format.json { render json: @facebuuk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /facebuuks/1
  # PATCH/PUT /facebuuks/1.json
  def update
    respond_to do |format|
      if @facebuuk.update(facebuuk_params)
        format.html { redirect_to @facebuuk, notice: 'Facebuuk was successfully updated.' }
        format.json { render :show, status: :ok, location: @facebuuk }
      else
        format.html { render :edit }
        format.json { render json: @facebuuk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facebuuks/1
  # DELETE /facebuuks/1.json
  def destroy
    @facebuuk.destroy
    respond_to do |format|
      format.html { redirect_to facebuuks_url, notice: 'Facebuuk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  
  def confirm
     @facebuuk = Facebuuk.new(facebuuk_params)
     @facebuuk.users_id = current_user.id
     render :new if @facebuuk.invalid?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_facebuuk
      @facebuuk = Facebuuk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def facebuuk_params
      params.permit(:facebuuk).permit(:faceboak)
    end
end

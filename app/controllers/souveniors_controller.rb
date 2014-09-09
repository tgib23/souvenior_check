class SouveniorsController < ApplicationController
  before_action :set_souvenior, only: [:show, :edit, :update, :destroy]

  # GET /souveniors
  # GET /souveniors.json
  def index
    @souveniors = Souvenior.all
  end

  # GET /souveniors/1
  # GET /souveniors/1.json
  def show
  end

  # GET /souveniors/new
  def new
    @souvenior = Souvenior.new
  end

  # GET /souveniors/1/edit
  def edit
  end

  # POST /souveniors
  # POST /souveniors.json
  def create
    @souvenior = Souvenior.new(souvenior_params)

    respond_to do |format|
      if @souvenior.save
        format.html { redirect_to root_path, notice: 'Souvenior was successfully created.' }
        format.json { render :show, status: :created, location: @souvenior }
      else
        format.html { render :new }
        format.json { render json: @souvenior.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /souveniors/1
  # PATCH/PUT /souveniors/1.json
  def update
    respond_to do |format|
      if @souvenior.update(souvenior_params)
        format.html { redirect_to @souvenior, notice: 'Souvenior was successfully updated.' }
        format.json { render :show, status: :ok, location: @souvenior }
      else
        format.html { render :edit }
        format.json { render json: @souvenior.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_souvenior
      @souvenior = Souvenior.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def souvenior_params
      params.require(:souvenior).permit(:score, :comment)
    end
end

class PhoneAppsController < ApplicationController
  before_action :set_phone_app, only: [:show, :edit, :update, :destroy]

  # GET /phone_apps
  # GET /phone_apps.json
  def index
    @phone_apps = PhoneApp.all
  end

  # GET /phone_apps/1
  # GET /phone_apps/1.json
  def show
  end

  # GET /phone_apps/new
  def new
    @phone_app = PhoneApp.new
  end

  # GET /phone_apps/1/edit
  def edit
  end

  # POST /phone_apps
  # POST /phone_apps.json
  def create
    @phone_app = PhoneApp.new(phone_app_params)

    respond_to do |format|
      if @phone_app.save
        format.html { redirect_to @phone_app, notice: 'Phone app was successfully created.' }
        format.json { render :show, status: :created, location: @phone_app }
      else
        format.html { render :new }
        format.json { render json: @phone_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phone_apps/1
  # PATCH/PUT /phone_apps/1.json
  def update
    respond_to do |format|
      if @phone_app.update(phone_app_params)
        format.html { redirect_to @phone_app, notice: 'Phone app was successfully updated.' }
        format.json { render :show, status: :ok, location: @phone_app }
      else
        format.html { render :edit }
        format.json { render json: @phone_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phone_apps/1
  # DELETE /phone_apps/1.json
  def destroy
    @phone_app.destroy
    respond_to do |format|
      format.html { redirect_to phone_apps_url, notice: 'Phone app was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone_app
      @phone_app = PhoneApp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phone_app_params
      params.require(:phone_app).permit(:brand, :model, :details, :price)
    end
end

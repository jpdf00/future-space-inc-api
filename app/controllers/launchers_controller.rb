class LaunchersController < ApplicationController
  before_action :set_launcher, only: %i[ show update destroy ]

  # GET /launchers
  def index
    @launchers = Launcher.all

    render json: @launchers
  end

  # GET /launchers/1
  def show
    render json: @launcher
  end

  # POST /launchers
  def create
    ImportLauncherDataJob.perform_later
    # if @launcher.save
    #   render json: @launcher, status: :created, location: @launcher
    # else
    #   render json: @launcher.errors, status: :unprocessable_entity
    # end
  end

  # PATCH/PUT /launchers/1
  def update
    if @launcher.update(launcher_params)
      render json: @launcher
    else
      render json: @launcher.errors, status: :unprocessable_entity
    end
  end

  # DELETE /launchers/1
  def destroy
    @launcher.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_launcher
      @launcher = Launcher.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def launcher_params
      params.require(:launcher).permit(:url, :launch_library_id, :slug, :name, :net, :window_end, :window_start, :inhold, :tbdtime, :tbddate, :probability, :holdreason, :failreason, :hashtag, :webcast_live, :image, :infographic, :imported_t, :publishing_status, :manual_update, :program)
    end
end

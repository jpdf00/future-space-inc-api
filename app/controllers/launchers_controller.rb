class LaunchersController < ApplicationController
  before_action :set_launcher, only: %i[ show update destroy ]

  # GET /
  def home
    render json: { message: "REST Back-end Challenge 20201209 Running" }
  end

  # GET /launchers
  def index
    page = params[:page].present? ? params[:page].to_i : 1
    limit = params[:limit].present? ? params[:limit].to_i : 10

    @launchers = Launcher
      .includes(
        :status,
        :launch_service_provider,
        :mission => :orbit,
        :pad => :location,
        :rocket => :configuration
      )
      .order(:id)
      .page(page)
      .per(limit)

    render json: @launchers
  end

  # GET /launchers/1
  def show
    render json: @launcher
  end

  # POST /launchers
  def create
    Import::ImportLauncherDataService.new.call

    render json: { message: "Enqueued Import Jobs" }
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

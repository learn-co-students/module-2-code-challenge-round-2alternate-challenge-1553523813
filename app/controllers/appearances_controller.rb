class AppearancesController < ApplicationController
    skip_before_action :verify_authenticity_token
    def new
        @app=Appearance.new()
    end
    def create
        @app = Appearance.create(app_params)
        @ep = @app.episode_id
        byebug
        redirect_to episode_path(@ep.to_i)
    end
    def app_params
        params.require(:appearance).permit(:episode_id,:guest_id)
    end
end

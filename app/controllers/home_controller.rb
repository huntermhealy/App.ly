class HomeController < ApplicationController
  before_action :set_home, only: [:show]

  # GET /home
  # GET /home.json
  def index
   # @home = Home.all
  end

  # GET /home/1
  # GET /home/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @home = Home.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:home).permit()
    end
end
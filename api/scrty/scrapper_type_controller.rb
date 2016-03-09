#scrapper_type_controller.rb


class Api::Scrty::ScrapperTypeController < Api::Scrty::BaseController
  def index
    respond_with Scrapper.all
  end

  def create
    respond_with :api, :scrty, Scrapper.create(scrapper_params)
  end

  def destroy
    respond_with Scrapper.destroy(params[:id])
  end

  def update
    scrapper = Scrapper.find(params["id"])
    scrapper.update_attributes(scrapper_params)
    respond_with scrapper, json: scrapper
  end

  private

  def scrapper_params
    params.require(:scrapper).permit(:id, :category, :description)
  end
end


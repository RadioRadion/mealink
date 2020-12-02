class SearchesController < ApplicationController
  def create
    @search = Search.new(search_params)
    @search.user = current_user
    @search.save!
    redirect_to meals_path
  end

  private

  def search_params
    params.require(:search).permit(:address, :distance)
  end
end

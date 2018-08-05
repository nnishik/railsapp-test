class HomeController < ApplicationController


  def search

    # if params[:from].present?
    @s = Home.search(params[:id],params[:name],params[:from],params[:to]).all
  end
end

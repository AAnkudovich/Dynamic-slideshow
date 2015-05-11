class StaticPagesController < ApplicationController
  def home
    @images = Image.find_by(params[:possition])
    @images = Image.all
  end
end

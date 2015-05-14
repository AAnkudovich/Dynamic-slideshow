class StaticPagesController < ApplicationController
  def home
    @images = Image.order(possition: :asc)
  end
end

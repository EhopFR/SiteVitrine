class PagesController < ApplicationController

  def home
    @products_online = Product.includes(:category, :tags).online.all
    @products_offline = Product.includes(:category, :tags).where(online: 0).all
  end

end

class ProductsController < ApplicationController
  def index
    session[:cart] = [] unless session[:cart]
  end

  def add
    session[:cart].push(params['product'])
    redirect_to '/'
  end
end

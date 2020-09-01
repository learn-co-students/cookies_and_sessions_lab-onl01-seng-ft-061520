class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :current_cart



  # https://www.youtube.com/watch?v=idAbPU7cxPc&feature=youtu.be
  def cart
    # Explanation: If you don't have a cart, set it to an empty array
    # session[:cart] ||= []
    current_cart

  # # load the cart referenced in the session
  # @cart = Cart.find(session[:cart_id])

  end

  # 29:30 Nicky Video:    https://www.youtube.com/watch?v=idAbPU7cxPc&feature=youtu.be
  def current_cart
    # session[:cart] ||= []
    session[:cart] = [] unless session[:cart]
    session[:cart]
  end


  private

  #  # set cart_id
  #  session[:cart_id] = @cart.id

end

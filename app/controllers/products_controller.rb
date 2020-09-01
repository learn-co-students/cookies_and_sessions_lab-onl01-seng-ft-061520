class ProductsController < ApplicationController

    def index
        # Test session
        # session[:cart] = ["wealth", "wisdom", "serenity"]
        
        # EXPLANATION: If they don't have a session key give them one and set it to an empty array
        # session[:cart] = [] unless session[:cart]
        # current_cart
    end

    def add
        # NOTE params are EMPTY but session has ALL PRIOR entered info

        # EXPLANATION: Use push or shovel to update the cart
        # session[:cart].push(params[:product])
        # session[:cart] << (params["product"])


        current_cart.push(params[:product])
        # current_cart << (params[:product])


        redirect_to root_path





        # # Get the item from the path
        # @product = Product.find(params[:id])
 
        # # Load the cart from the session, or create a new empty cart.
        # # current_cart << @item.id
        # cart << @item.id
    end
  
  
  end
  
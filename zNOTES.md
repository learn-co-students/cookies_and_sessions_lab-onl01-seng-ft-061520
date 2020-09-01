NOTE: Use byebug/pry to make sure when you input browser data, you hit the actions in the controllers on the other end

5 examples, 1 failure

20:00 STOPPED AT THIS TIME
Video Lab walk through with Nicky
    https://www.youtube.com/watch?v=idAbPU7cxPc&feature=youtu.be

FILES altered

    app/controllers/application_controller.rb
    app/controllers/products_controller.rb
    views/products/index.html.erb
    config/routes.rb

NOTE Products controller action index MUST have content or the index page will throw an error.

?? Signed into SESSIONS ?? WHEN!!??
10:55

USED current_cart throughout application because set at the top of file: app/controllers/application_controller.rb

FILE controllers/products_controller
    params has WEALTH and session has ALL PRIOR entered info
    params[:product]    =>> "wealth"
    session[:cart]      =>> ["spinach", "intelligence", "serenity"]

    session[:cart] << params[:product]
                - OR -
    session[:cart].push(params["product"])
    =>> ["spinach", "intelligence", "serenity", "wealth"]


FILE     app/controllers/products_controller.rb
    Test code with:     
        def index
            session[:cart] = ["wealth", "wisdom", "serenity"]
        end

         
FILE
    Two different solutions
        <ul>
            <% session[:cart].each do |item| %>   
                <li><%= item %></li>
            <% end %>
        </ul>
                - OR -

        <%= session[:cart].inspect %>  





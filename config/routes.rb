Rails.application.routes.draw do

    get("/", { :controller => "pages", :action => "square" })
    get("/square/new", { :controller => "pages", :action => "square" })
    get("/square/results", { :controller => "pages", :action => "squareres" })
    get("/square_root/new", { :controller => "pages", :action => "root" })
    get("/square_root/results", { :controller => "pages", :action => "rootres" })
    get("/random/new", { :controller => "pages", :action => "random" })
    get("/random/results", { :controller => "pages", :action => "randomres" })
    get("/payment/new", { :controller => "pages", :action => "payment" })
    get("/payment/results", { :controller => "pages", :action => "paymentres" })
  
  end

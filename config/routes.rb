Rails.application.routes.draw do
  get("/instructions", { :controller => "calculations", :action => "instructions" })
  get("/square/:number", { :controller => "calculations", :action => "square" })
  get("/square_root/:number", { :controller => "calculations", :action => "sqrt" })
  get("/payment/:interest/:nopayments/:principal", { :controller => "calculations", :action => "pmt" })
end

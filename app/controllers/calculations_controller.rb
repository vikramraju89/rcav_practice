class CalculationsController < ApplicationController
  def square
    @number =  params["number"]
    @inumber = @number.to_i
    @dasquare = (@inumber)**2
  end

  def sqrt
    @number = params["number"]
    @inumber = @number.to_i
    @daroot = Math.sqrt(@inumber)
  end

  def pmt
    @apr = params["interest"].to_f/10
    @rate = @apr/12/100
    @payments = params["nopayments"].to_f
    @terms = @payments
    @principal = params["principal"].to_f
    @monthly_payment =  (@principal*(((1+@rate)**@terms)*@rate)/(((1+@rate)**@terms)-1)).round(3)
  end
end

class PagesController < ApplicationController

  def square

    render ({ :template => "pages/square" })
  end 

  def squareres

  @num_squa = params.fetch("user_square").to_f
  @squa_result = @num_squa ** 2

    render ({ :template => "pages/square_result" })
  end 

  def root

    render ({ :template => "pages/root" })
  end 

  def rootres

  @num_root = params.fetch("user_root").to_f
  @root_result = Math.sqrt(@num_root)

    render ({ :template => "pages/root_result" })
  end 

  def random

    render ({ :template => "pages/random" })
  end 

  def randomres

  @mininput = params.fetch("user_min").to_f
  @maxinput = params.fetch("user_max").to_f

  @result = rand(@mininput..@maxinput)

    render ({ :template => "pages/random_result" })
  end 

  def payment

    render ({ :template => "pages/payment" })

  end 

  def paymentres


  @apr = params.fetch("user_apr").to_f
  @years = params.fetch("user_years").to_i
  @prin = params.fetch("user_prin").to_f

  @months = @years * 12
  @r = (@apr / 100) / 12

  @numerator = @r * @prin
  @denominator = 1 - (1 + @r) ** (-(@months))

  @formula = @numerator / @denominator
  
  @payment = @formula.to_fs(:currency)

    render ({ :template => "pages/payment_result" })
  end 

end 

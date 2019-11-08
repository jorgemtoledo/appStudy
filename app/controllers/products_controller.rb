class ProductsController < ApplicationController
  def index
  end
  def new
    respond_to do |format|
      format.html
      format.js
    end  
  end

  def show
   @number = params[:id].to_i
   @sum = 2 + @number
  #  @comment = 'https://renovigi.com.br/complemente-seu-cadastro/xxx'
    @comment = @sum
    respond_to do |format|
      format.js {render 'show_modal'}
    end
  end


end

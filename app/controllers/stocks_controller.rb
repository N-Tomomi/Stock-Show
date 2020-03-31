class StocksController < ApplicationController

  def index
    # @stocks = Stock.all.order(stock_code: 'asc')
    @stocks = Stock.all.order(created_at: 'desc')
  end

  def show
    @stock = Stock.find(params[:id])
  end

  def new
    @stock = Stock.new
  end

  def create
    Stock.create(stock_params)
    redirect_to root_path
  end

  def edit
    @stock = Stock.find(params[:id])
  end

  def update
    stock = Stock.find(params[:id])
    stock.update(stock_params)
    redirect_to stock_path(stock.id)
  end

  def destroy
    stock = Stock.find(params[:id])
    stock.destroy
    redirect_to root_path
  end


  private
  def stock_params
    params.require(:stock).permit(:stock_code, :name)
  end


end

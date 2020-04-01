class DividendsController < ApplicationController

  def create

    @stock = Stock.find(params[:stock_id])
    @stock.dividends.create(dividend_params)
    redirect_to root_path

  end

  def destroy
    @stock = Stock.find(params[:stock_id])
    @dividend = @stock.dividends.find(params[:id])
    @dividend.destroy
    redirect_to root_path
  end

  private
  def dividend_params
    params.require(:dividend).permit(:dividend, :stock_num, :year_month, :comment)
  end

end

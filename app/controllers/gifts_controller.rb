class GiftsController < ApplicationController

  def create
    @stock = Stock.find(params[:stock_id])
    @stock.gifts.create(gift_params)
    redirect_to root_path
  end

  def destroy
    @stock = Stock.find(params[:stock_id])
    @gift = @stock.gifts.find(params[:id])
    @gift.destroy
    redirect_to root_path
  end

  private
  def gift_params
    params.require(:gift).permit(:gift_name, :value, :year_month, :comment)
  end

end

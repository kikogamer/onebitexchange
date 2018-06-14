class BitcoinsController < ApplicationController
  def convert
    value = BitcoinService.new(params[:currency], params[:amount], params[:convertTo]).perform
    render json: {"value": value}
  end
end

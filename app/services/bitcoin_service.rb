require 'rest-client'
require 'json'

class BitcoinService
  def initialize(currency, amount, convertTo)
    @currency = currency
    @convertTo = convertTo
    @amount = amount.to_f
  end

  def perform
    begin
      bitcoin_api_url = Rails.application.credentials[Rails.env.to_sym][:bitcoin_api_url]
      url = "#{bitcoin_api_url}?currency=#{@currency}&value=#{@amount}"
      res = RestClient.get url
      value = res.body.to_f

      if value == 0
        0
      elsif @convertTo == "true"
        @amount / value
      else 
        @amount * value
      end
    rescue RestClient::ExceptionWithResponse => e
      e.response
    end
  end
end

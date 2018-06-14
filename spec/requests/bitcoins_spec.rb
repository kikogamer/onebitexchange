require 'rails_helper'

RSpec.describe 'Bitcoins', type: :request do
  describe 'GET #convert' do
    before do
      @amount = rand(1..9999)
    end

    it 'returns http success' do
      get '/bitcoins/convert', params: {
                        currency: "USD",
                        amount: @amount,
                        convertTo: true
                      }
      expect(response).to have_http_status(200)
    end
  end
end

Rails.application.routes.draw do
  get 'bitcoins/convert'
  root 'exchanges#index'
  get 'convert', to: 'exchanges#convert'
end

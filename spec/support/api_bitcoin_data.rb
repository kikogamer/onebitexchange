RSpec.configure do |config|
  config.before(:each) do
    stub_request(:get, /blockchain.info/ )
    .with(headers: {
      'Accept'=>'*/*'
    }).to_return(status: 200, body: '0.08891269', headers: {})
  end
end

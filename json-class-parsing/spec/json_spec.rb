require_relative "spec_helper"

describe 'Create tests for json file' do

before(:each) do
@currency = ParseJSON.new("json_exchange_rates.json")
end

  it "it should  have 31 currency exchanges " do
    expect(@currency.json_file["rates"].keys.length).to eq(31)
  end

  it "Base should be EUR " do
    expect(@currency.json_file["base"]).to eq("EUR")
  end

  it "First rate is AUD " do
    expect(@currency.json_file["rates"].first.first).to eq("AUD")
  end

  it "Last rate is ZAR " do
    expect(@currency.json_file["rates"].keys.last).to eq("ZAR")
  end

  it "The rate types are a hash " do
    expect(@currency.json_file["rates"]).to be_a(Hash)
  end

  it "The rate type for JPY is a float " do
    expect(@currency.json_file["rates"]["JPY"]).to be_a(Float)
  end

  it "The rate values are greater than 0 " do
    expect(@currency.json_file["rates"].values).to all(be > 0 )
  end


end

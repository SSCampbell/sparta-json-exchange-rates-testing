# Sparta Global Academy Homework -- Ruby JSON Class Testing

## Project Review:

### In this project we had create test procedures that will check against the JSON exchange rates in a separate file

## Project Download:  
### Download from the files created and transferred to GITHUB
### The repository was created on GITHUB and cloned to access from terminal  
### Used RUBY files
### Gem Files
### Rspec


## Using RUBY-rspec tools such as:
```RUBY
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
```

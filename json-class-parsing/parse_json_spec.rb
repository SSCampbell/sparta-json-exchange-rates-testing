require "json"
class ParseJSON
  #get properties so we can read and write to those properties
  attr_accessor :json_file
  #if we call ParseJSON.new(json_file) we can get json file and then parse it automatically and store it in @json_file, @json_file can be self.json_file iswell
  def initialize(json_file)
    @json_file = JSON.parse(File.read(json_file))
  end
end

json = ParseJSON.new("json_exchange_rates.json")

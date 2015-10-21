require 'net/http'
require 'uri'
require 'json'

uri = URI.parse("http://shell-finder.herokuapp.com/hashes")

response = Net::HTTP.get_response(uri)

response = JSON.parse(response.body)

response.map! { |obj| obj["hashContent"] }

response = response.join("\n")

IO.write("test.txt", response + "\n")

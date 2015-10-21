require 'net/http'

postData = Net::HTTP.post_form(URI.parse('http://shell-finder.herokuapp.com/hashes'), {'hashContent'=>'whatupyo'})

puts postData.body

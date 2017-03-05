require 'json'
require 'net/http'

URL = 'http://classification-kata.herokuapp.com'

def classification
uri = URI(URL)
Net::HTTP.get(uri)
	end

def parse(response)
	hash_classification = JSON.parse(response)
	return hash_classification['classification']  

end



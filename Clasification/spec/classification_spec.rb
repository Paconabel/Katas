require_relative '../classification'
describe 'classification' do
	it 'the url returns json' do
			response = classification
			expect(response).to eq('{"classification":[{"name":"Madrid","points":5},{"name":"Valencia","points":10},{"name":"Barcelona","points":7},{"name":"Zaragoza","points":8},{"name":"Bilbao","points":9}]}')
		end	
	it 'parses response' do
			response = classification
			parsed_response = parse(response)
			expect(parsed_response).to eq([{"name" => "Madrid","points" => 5},{"name" => "Valencia","points" => 10},{"name" => "Barcelona","points" => 7},{"name" => "Zaragoza","points" => 8},{"name" => "Bilbao","points" => 9}])
		end
	end

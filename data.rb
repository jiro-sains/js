require 'active_support/all'

num = 2
f = 1.0
string = "Hello"
sym = :symbol

hash = {
	1 => "One",
	2 => "Two",
	3 => "Three",
	4 => "Four"
}

puts hash.to_json.inspect
puts hash.to_json
json_string = "{\"1\":\"One\",\"2\":\"Two\",\"3\":\"Three\",\"4\":\"Four\"}"
json_string2 = '{"1":"One","2":"Two","3":"Three","4":"Four"}'

# json_string is the same as json_string2, you can test it with the line below
# json_string == json_string2

parsed = ActiveSupport::JSON.decode(json_string2)
puts parsed
puts parsed.inspect
puts parsed["1"]
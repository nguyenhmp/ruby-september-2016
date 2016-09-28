# hashes are dictionaries

hash = {:"first_name" => "Joshua", :"last_name"=>"Alley"}
puts hash[:"first_name"]+" "+hash[:"last_name"]
puts "_____________"
puts hash.delete(:"first_name")
puts "_____________"
puts hash.empty?
puts "_____________"
puts hash.has_key?(:"last_name")
puts "_____________"
puts hash.has_value?("Alley")

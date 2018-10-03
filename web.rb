require 'sinatra'

#multiply
#ex: localhost:4567/multiply?x=4&y=8
#should display: 32
get '/multiply' do
	numb1 = params["x"].to_i
	numb2 = params["y"].to_i
	result = numb1 * numb2
	return result.to_s
end

#multiply
#ex: localhost:4567/multiply?x=3.5&y=2.3
#should display: 8.05
get '/float_multiply' do
	numb1 = params["x"].to_f
	numb2 = params["y"].to_f
	result = numb1 * numb2
	return result.to_s
	
end

#product
#ex: localhost:4567/product?start=5&end=9
#should display: 15120
#because 5*6*7*8*9 = 15120
get '/product' do
	$s = params["start"].to_i
	$e = params["end"].to_i
	$sum = 1
	while ( $s <= $e)
		$sum *= $s
		$s+=1
	end
	return $sum.to_s

end

#password
#ex: localhost:4567/login?username=admin&password=123
#should display: Error - Unauthorized
#ex: localhost:4567/login?username=root&password=secret
#should display: Successfully Authenticated
get '/login' do
	real_username = "root"
	real_password = "secret"

	user = params["username"]
	pass = params["password"]


	#fill in the rest
		if user == real_username  and pass == real_password
			return "Successfully Authenticated"
		else
			return "Error - Unauthorized"
		end
end
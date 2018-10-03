require 'sinatra'

#multiply
#ex: localhost:4567/multiply?x=4&y=8
#should display: 32
get '/multiply' do
	
end

#multiply
#ex: localhost:4567/multiply?x=3.5&y=2.3
#should display: 8.05
get '/float_multiply' do
	
end

#product
#ex: localhost:4567/product?start=5&end=9
#should display: 15120
#because 5*6*7*8*9 = 15120
get '/product' do

end

#password
#ex: localhost:4567/login?username=admin&password=123
#should display: Error - Unauthorized
#ex: localhost:4567/login?username=root&password=secret
#should display: Successfully Authenticated
get '/login' do
	real_username = "root"
	real_password = "secret"
	#fill in the rest
end



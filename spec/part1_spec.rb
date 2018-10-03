# spec/app_spec.rb
require File.expand_path '../spec_helper.rb', __FILE__

describe "My application" do

  #multiply
  prng = Random.new
  x = prng.rand(20)+1
  y = prng.rand(20)+1
  it "should display #{x*y} when /multiply?x=#{x}&y=#{y} is accessed[10 points]" do
    get "/multiply?x=#{x}&y=#{y}"
    # Rspec 2.x
    expect(last_response.body).to eq("#{x*y}")
  end

  x = prng.rand(20)+1
  y = prng.rand(20)+1
  it "should display #{x*y} when /multiply?x=#{x}&y=#{y} is accessed[10 points]" do
    get "/multiply?x=#{x}&y=#{y}"
    # Rspec 2.x
    expect(last_response.body).to eq("#{x*y}")
  end

  #float multiply
  x = prng.rand(200)/10.0
  y = prng.rand(200)/10.0
  it "should display #{x*y} when /multiply?x=#{x}&y=#{y} is accessed[10 points]" do
    get "/float_multiply?x=#{x}&y=#{y}"
    # Rspec 2.x
    expect(last_response.body).to eq("#{x*y}")
  end

  x = prng.rand(200)/10.0
  y = prng.rand(200)/10.0
  it "should display #{x*y} when /multiply?x=#{x}&y=#{y} is accessed[10 points]" do
    get "/float_multiply?x=#{x}&y=#{y}"
    # Rspec 2.x
    expect(last_response.body).to eq("#{x*y}")
  end

  #product
  it "should display #{5*6*7*8*9} when /product?start=5&end=9 is accessed[10 points]" do
    get "/product?start=5&end=9"
    # Rspec 2.x
    expect(last_response.body).to eq("#{5*6*7*8*9}")
  end

  it "should display #{10*11*12} when /product?start=10&end=12 is accessed[10 points]" do
    get "/product?start=10&end=12"
    # Rspec 2.x
    expect(last_response.body).to eq("#{10*11*12}")
  end

  #login
  it "should display 'Error - Unauthorized' when /login is accessed with no parameters [10 points]" do
  	get '/login'
  	expect(last_response.body).to eq("Error - Unauthorized")
  end

  it "should display 'Error - Unauthorized' when /login?username=root&password=123 is accessed [10 points]" do
    get '/login?username=root&password=123'
    expect(last_response.body).to eq("Error - Unauthorized")
  end

  it "should display 'Error - Unauthorized' when /login?username=admin&password=secret is accessed [10 points]" do
    get '/login?username=admin&password=secret'
    expect(last_response.body).to eq("Error - Unauthorized")
  end

  it "should display 'Successfully Authenticated' when /login?username=root&password=secret is accessed  [10 points]" do
    get '/login?username=root&password=secret'
    expect(last_response.body).to eq("Successfully Authenticated")
  end
end
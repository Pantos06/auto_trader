require "auto_trader/version"
require 'json'
require 'httparty'

module AutoTrader

class Base
  
  include HTTParty 
  #base_uri = 'http://localhost:3000/api/v1'
  #basic_auth 'username', 'password'
  default_params :output => 'json'
  format :json


  def Base.getAllCars(authorization)
  	HTTParty.get('http://localhost:3000/api/v1/cars/')
  end

  def Base.getACar(id)
  	HTTParty.get("http://localhost:3000/api/v1/cars/#{id}")
  end

  def Base.CreateACar(body)
  	#RestClient.post 'http://localhost:3000/api/v1/cars', {:car => { :manufacturer => 'WV', :design => 'GOLF', :style => 'GOLF-Mini'} }.to_json, :content_type => "application/json", :accept => "application/json"
  	@response = HTTParty.post("http://localhost:3000/api/v1/cars",
  	{
  		:body => body.to_json,
  		:headers => { "Content-Type" => "application/json" }
  	})  
  end
end
end

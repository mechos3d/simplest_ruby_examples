require 'sinatra/reloader'
require 'sinatra'

require 'faraday'
require 'rubygems'

require 'faraday'

get '/' do

  conn = Faraday.new(:url => 'http://google.com') do |faraday|
    faraday.request  :url_encoded             # form-encode POST params
    faraday.response :logger                  # log requests to STDOUT
    faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
  end

  request.inspect
end

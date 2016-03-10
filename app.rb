require 'sinatra'
require 'erb'

get '/' do
  start_date = Date.parse(Time.now.to_s)
  end_date = Date.parse "2016-09-01"
  days = (end_date - start_date).to_i
  @months = (days / 30.1).to_i
  @days = days - (@months * 30.1).to_i

  erb :index
end

require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangle')


get('/') do
  erb(:triangle)
end

post('/result') do

  @triangle = Triangle.new(params[:s1].to_i,params[:s2].to_i,params[:s3].to_i)
  @result = @triangle.find_type
  erb(:result) 
end
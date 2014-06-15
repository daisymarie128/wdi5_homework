require 'pry'
require 'sinatra'
require 'sinatra/reloader'

get '/main' do
  erb :form
end

get '/results' do
  params.inspect
end

get '/pass' do
  erb :pass
end

get '/write_test' do
  erb :write_test
end

get '/refactor' do
  erb :refactor
end

get '/do_refactor' do
  erb :do_refactor
end

get '/new_feature' do
  erb :new_feature
end

get '/write_code' do
  erb :write_code
end
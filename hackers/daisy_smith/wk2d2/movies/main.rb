require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

get '/movie' do
  erb :form
end

get '/results' do
  @title = params[:title].capitalize
  url = "http://omdbapi.com/?t=#{ @title }"
  response = HTTParty.get(url)
  @movie = JSON.parse response
  @actors = @movie['Actors']
  @poster = @movie['Poster']
  @year = @movie['Year']
  @plot = @movie['Plot']
  erb :movie
end

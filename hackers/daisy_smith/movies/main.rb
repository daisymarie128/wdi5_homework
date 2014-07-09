require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

get '/main' do
  erb :form
end

get '/results' do
  @search = params[:title].capitalize
  @search.gsub!(/ /,"+")
  url = "http://omdbapi.com/?s=#{ @search }"
    response = HTTParty.get(url)
  @movie = JSON.parse response
  if @movie["Search"].count == 1
    redirect 'http://omdbapi.com/?t=#{ @search }'
    @search.gsub!(/ /,"+")
  end
  # @mtitle = @movie['Title']
  # @actors = @movie['Actors']
  # @poster = @movie['Poster']
  # @year = @movie['Year']
  # @plot = @movie['Plot']
  # if @title == "" then
  #   @title = "Movie not found!"
  # end
  erb :search
end


get '/search' do
  @search = params[:title].capitalize
  @search.gsub!(/ /,"+")
  url = "http://omdbapi.com/?s=#{ @search }"
    response = HTTParty.get(url)
  @movie = JSON.parse response
  if @movie["Search"].count == 1
    redirect 'http://omdbapi.com/?t=#{ @search }'
    @search.gsub!(/ /,"+")
  end
  # @mtitle = @movie['Title']
  # @actors = @movie['Actors']
  # @poster = @movie['Poster']
  # @year = @movie['Year']
  # @plot = @movie['Plot']
  # if @title == "" then
  #   @title = "Movie not found!"
  # end
  erb :search
end


get '/movie' do
  @search = params[:title]
  @search.gsub!(/ /,"+")
  url = "http://omdbapi.com/?t=#{ @search }"
  response = HTTParty.get(url)
  @movie = JSON.parse response
  erb :movie
end

get '/about' do
  erb :about
end




# http://localhost:4567/search?search=jaws

# http://localhost:4567/results?title=jaws


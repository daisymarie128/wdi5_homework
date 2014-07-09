require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

require_relative 'movie'

after do
  ActiveRecord::Base.connection.close
end


get '/' do
  erb :form
end

get '/results' do
  @search = params[:title].capitalize
  @search.gsub!(/ /,"+")
  url = "http://omdbapi.com/?s=#{ @search }"
    response = HTTParty.get(url)
  @movie = JSON.parse response
  @movie["Search"].count == 1
    redirect 'http://omdbapi.com/?t=#{ @search }'
    @search.gsub!(/ /,"+")

  else
     @movie = Movie.find id
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
  id = params[:id]
  @movies = Movie.all
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
  @movie = Movie.find id
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

post '/search' do
  @movie = Movie.new
  Movie.create :imbdid=> :params[:imbdid], :title=> params[:title], :year=> params[:year], :actors=> params[:actors], :plot=> params[:plot], :poster=> [:poster]

  redirect to '/search'
end



def query_db(sql)
  db = SQLite3::Database.new "movies.db"
  db.results_as_hash = true
  result = db.execute sql
  db.close
  result
end

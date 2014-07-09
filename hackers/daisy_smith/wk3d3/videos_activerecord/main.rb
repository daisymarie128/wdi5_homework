require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

require_relative 'video'

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  redirect to 'videos'

end

get '/videos' do
  @videos = Video.all
  erb :videos
end

get '/videos/new' do
  erb :new_video
end

get '/videos/:id' do
  id = params[:id]
  @video = Video.find id

  erb :video
end

get '/videos/:id/edit' do
  @id = params[:id]
  @video = Video.find id

  erb :edit_video

end

#update a video
post '/videos/:id' do
  id = Video.find params[:id]
  video.title = params[:title]
  video.description = params[:description]
  video.url = params[:url]
  video.genre = params[:genre]

  video.save

  redirect to "videos/#{id}"
end

get '/videos/:id/delete' do
  id = params[:id]
  video = Video.find id
  video.destroy

  redirect to "/videos"
end


post '/videos' do
  video = Video.new
  Video.create :title=> params[:title], :description=> params[:description], :url=> params[:url], :genre=> params[:genre]

  redirect to '/videos'
end

def query_db(sql)
  db = SQLite3::Database.new "videos.db"
  db.results_as_hash = true
  result = db.execute sql
  db.close
  result
end
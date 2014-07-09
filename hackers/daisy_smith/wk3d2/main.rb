require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

get '/' do
  redirect to 'videos'

end

get '/videos' do
  @videos = query_db "SELECT * FROM videos"
  erb :videos
end

get '/videos/new' do
  erb :new_video
end

get '/videos/:id' do
  id = params[:id]
  sql = "SELECT * FROM videos WHERE id = #{ id }"
  @video = query_db sql
  @video = @video.first

  erb :video
end

get '/videos/:id/edit' do
  @id = params[:id]
  sql = "SELECT * FROM videos WHERE id = #{ @id }"
  @video = query_db sql
  @video = @video.first

  erb :edit_video

end

post '/videos/:id' do
  id = params[:id]
  title = params[:title]
  description = params[:description]
  url = params[:url]
  genre = params[:genre]

  sql = "UPDATE videos SET title='#{title}', description='#{description}', url='#{url}', genre='#{genre}' WHERE id=#{id}"
  query_db sql

  redirect to "videos/#{id}"
end

get '/videos/:id/delete' do
  id = params[:id]
  sql = "DELETE FROM videos WHERE id=#{id}"
  query_db sql

  redirect to "/videos"
end


post '/videos' do
  title = params[:title]
  description = params[:description]
  url = params[:url]
  genre = params[:genre]
  sql = "INSERT INTO videos (title, description, url, genre) VALUES ('#{title}', '#{description}', '#{url}',  '#{genre}')"
  query_db sql
  redirect to '/videos'
end

def query_db(sql)
  db = SQLite3::Database.new "videos.db"
  db.results_as_hash = true
  result = db.execute sql
  db.close
  result
end
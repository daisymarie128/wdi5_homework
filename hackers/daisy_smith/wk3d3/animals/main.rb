require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

require_relative 'supporter'

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  redirect to 'supporters'

end

get '/supporters' do
  @supporters = Supporter.all
  erb :supporters
end

get '/supporters/new' do
  erb :new_supporter
end

get '/supporters/:id' do
  id = params[:id]
  @supporter = Supporter.find id

  erb :supporter
end

get '/supporters/:id/edit' do
  @id = params[:id]
  @supporter = Supporter.find id

  erb :edit_supporter

end

#update a supporter
post '/supporters/:id' do
  id = supporter.find params[:id]
  supporter.title = params[:title]
  supporter.description = params[:description]
  supporter.url = params[:url]
  supporter.genre = params[:genre]

  supporter.save

  redirect to "supporters/#{id}"
end

get '/supporters/:id/delete' do
  id = params[:id]
  supporter = Supporter.find id
  supporter.destroy

  redirect to "/supporters"
end


post '/supporters' do
  supporter = Supporter.new
  supporter.create :name=> params[:name], :location=> params[:location], :image=> params[:image]

  redirect to '/supporters'
end

def query_db(sql)
  db = SQLite3::Database.new "supporters.db"
  db.results_as_hash = true
  result = db.execute sql
  db.close
  result
end
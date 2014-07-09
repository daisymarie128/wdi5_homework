require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

require_relative 'donater'

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  erb :home

end

get '/donaters' do
  @donaters = Donater.all
  erb :donaters
end

get '/donaters/new' do
  erb :new_donater
end

get '/donaters/:id' do
  id = params[:id]
  @donater = Donater.find id

  erb :donater
end

get '/donaters/:id/edit' do
  @id = params[:id]
  @donater = Donater.find id

  erb :edit_donater

end

#update a donater
post '/donaters/:id' do
  id = Donater.find params[:id]
  donater.name = params[:name]
  donater.location = params[:location]
  donater.image = params[:image]

  donater.save

  redirect to "donaters/#{id}"
end

get '/donaters/:id/delete' do
  id = params[:id]
  donater = Donater.find id
  donater.destroy

  redirect to "/donaters"
end


post '/donaters' do
  donater = Donater.new
  Donater.create :name=> params[:name], :location=> params[:location], :image=> params[:image]

  redirect to '/donaters'
end

def query_db(sql)
  db = SQLite3::Database.new "donaters.db"
  db.results_as_hash = true
  result = db.execute sql
  db.close
  result
end
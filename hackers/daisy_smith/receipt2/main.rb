require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

get '/' do
  @receipts = query_db "SELECT * FROM receipts"
  erb :receipts
end

get '/new' do
  erb :new_recipet
end

post '/' do
  sql = "INSERT INTO receipts (servise, cost) VALUES ('#{ params['service'] }', '#{ params['cost'] }')"

  query_db sql
  redirect to "/"

end

get '/receipts/:id' do
  id = params[:id]
  sql = "SELECT * FROM receipts WHERE id = #{ id }"
  @receipt = query_db sql
  @receipt = @receipt.first # "Flatten"

  erb :receipt

end

get '/receipts/:id/edit' do
  id = params[:id]
  sql = "SELECT * FROM receipts WHERE id = #{ id }"
  @receipt = query_db sql
  @receipt = @receipt.first # "Flatten"

  query_db sql
  erb :edit

end

get '/receipts/:id' do
  id = params[:id]
  sql = "SELECT * FROM receipts WHERE id = #{ id }"
  @receipt = query_db sql
  @receipt = @receipt.first # "Flatten"

  erb :receipt

end


post '/receipts/:id' do
id = params[:id]
sql = "UPDATE receipts SET servise='#{ params['servise'] }', '#{ params['cost'] }') WHERE id = #{ id }"
query_db sql
redirect to '/receipts/#{ id }'
end

get '/receipts/:id/delete' do
  id = params[:id]
  sql = "DELETE FROM receipts WHERE id = #{ id }"
  @receipt = query_db sql
  @receipt = @receipt.first # "Flatten"

  erb :receipt

end

get '/stats' do
  @max = query_db("SELECT MAX(cost) FROM receipts").last[0]
  @min = query_db("SELECT MIN(cost) FROM receipts").last[0]
  @average = query_db("SELECT AVG(cost) FROM receipts").last[0]
  @count = query_db("SELECT COUNT(*) FROM receipts").last[0]

  erb :stats


end


def query_db(sql)
  db = SQLite3::Database.new "receipt2.db"
  db.results_as_hash = true
  result = db.execute sql
  db.close
  result
end





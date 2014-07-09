require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'yahoofinance'

get '/yahoo' do
  erb :form
end

get '/results' do
  @symbol = params[:symbol].upcase
  @result = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol].lastTrade
  erb :yahoo
end


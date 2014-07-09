class PagesController < ApplicationController

  def moviesearch
  end

  def movieresults
    @search = params[:title].capitalize
  @search.gsub!(/ /,"+")
  url = "http://omdbapi.com/?s=#{ @search }"
    response = HTTParty.get(url)
  @movie = JSON.parse response
  if @movie["Search"].count == 1
    redirect 'http://omdbapi.com/?t=#{ @search }'
    @search.gsub!(/ /,"+")
  end
end

  def movie
  @search = params[:title]
  @search.gsub!(/ /,"+")
  url = "http://omdbapi.com/?t=#{ @search }"
  response = HTTParty.get(url)
  @movie = JSON.parse response
  end


  def stocksearch
  end

  def stockresults
  @symbol = params[:symbol].upcase
  @result = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol].lastTrade
  end
end

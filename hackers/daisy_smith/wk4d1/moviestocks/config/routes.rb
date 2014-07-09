Rails.application.routes.draw do
 get '/' => 'pages#index'

 get '/moviesearch' => 'pages#moviesearch'
 get '/movieresults' => 'pages#movieresults'
 get '/movie' => 'pages#movie'

 get '/stocksearch' => 'pages#stocksearch'
 get '/stockresults' => 'pages#stockresults'

end

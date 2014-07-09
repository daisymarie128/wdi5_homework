require 'pry'
require 'sinatra'
require 'sinatra/reloader'

  $lines = {
  "N" => {'Times Square' => 1, '34th' => 2, '28th' => 3, '23rd' => 4, 'Union Square' => 5, '8th' => 6},
  "L" => {'8th' => 3, '6th' => 4, 'Union Square' => 5, '3rd' => 6, '1st' => 7},
  "Six" => {'Grand Central' => 1, '33rd' => 2, '28th' => 3, '23rd' => 4, 'Union Square' => 5, 'Astor Place' => 6}
}
#   $lines = {
# "N" => ["Times Square", "34th", "28th", "N23rd", "Union Square", "N8th"],
# "L" => ["L8th", "6th", "Union Square", "3rd", "1st"],
# "Six" => ["Grand Central", "33rd", "six28th", "six23rd", "Union Square", "Astor Place"]
# }


get '/' do
erb :form
end

get '/results' do
  # "Hello, . #{params.inspect}"



@line1 = $lines[params[:line1]]
@line2 = $lines[params[:line2]]
@station1 = params[:station2].to_s
@station2 = params[:station2].to_s

@line1 = params[:line1]
@line2 = params[:line2]
@station1 = params[:station2]
@station2 = params[:station2]

@result = params[:station2]


# @line1 = $lines[params[:line1]]
# @line2 = $lines[params[:line2]]
erb :results



# @value1 = $lines["N"].length
# value2 = $lines[line2].index station2

# result = value2 - value1








# "#{ $lines[line1].each_with_index {|val, index| puts "#{val} => #{index}" } }"



# "There are #{ result } stops on the way"

end


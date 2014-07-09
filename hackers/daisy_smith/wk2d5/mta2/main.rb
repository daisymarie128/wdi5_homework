require 'pry'
require 'sinatra'
require 'sinatra/reloader'

#   $lines = {
#   "N" => {'Times Square' => 1, '34th' => 2, '28th' => 3, '23rd' => 4, 'Union Square' => 5, '8th' => 6},
#   "L" => {'8th' => 3, '6th' => 4, 'Union Square' => 5, '3rd' => 6, '1st' => 7},
#   "Six" => {'Grand Central' => 1, '33rd' => 2, '28th' => 3, '23rd' => 4, 'Union Square' => 5, 'Astor Place' => 6}
# }
  $lines = {
"N" => ["Times_Square", "34th", "28th", "N23rd", "Union_Square", "N8th"],
"L" => ["L8th", "6th", "Union_Square", "3rd", "1st"],
"Six" => ["Grand_Central", "33rd", "six28th", "six23rd", "Union_Square", "Astor_Place"]
}


get '/' do
erb :form
end

get '/results' do
  params.inspect
#   @input = params


#   # "Hello, . #{params.inspect}"

# @station1 = params[:station2].to_s
# @station2 = params[:station2].to_s

@station1 = params[:station1]
@station2 = params[:station2]


@line1 = params[:line1]
@line2 = params[:line2]

@union = "Union_Square"


@value1 = $lines[@line1].index(@station1)
 @value2 = $lines[@line2].index(@station2)

@change = $lines[@line1].index(@union)

@result = @value2 - @value1

# @names = $lines[@line1].index(@station1)..(@change)


#"#{ $lines[line1].each_with_index {|val, index| puts "#{val} => #{index}" } }"



# "There are #{ result } stops on the way"
  erb :form
end


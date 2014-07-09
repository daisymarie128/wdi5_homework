scrabble = {
  1 => %W(A E I O U L N R S T),
  2 => %W(D G),
  3 => %W(B C M P),
  4 => %W(F H V W Y),
  5 => %W(K),
  8 => %W(J X),
  10 => %W(Q Z),
}

new_scrabble = Hash.new
scrabble[1].each {|x| new_scrabble[x.downcase] = 1}
scrabble[2].each {|x| new_scrabble[x.downcase] = 2}
scrabble[3].each {|x| new_scrabble[x.downcase] = 3}
scrabble[4].each {|x| new_scrabble[x.downcase] = 4}
scrabble[5].each {|x| new_scrabble[x.downcase] = 5}
scrabble[8].each {|x| new_scrabble[x.downcase] = 8}
scrabble[10].each {|x| new_scrabble[x.downcase] = 10}

# new_scrabble.map {|key, value| new_scrabble[key, value]}


scrable2 = Hash[new_scrabble.sort]

p scrable2
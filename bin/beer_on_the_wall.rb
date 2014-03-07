bottles = gets.chomp.to_i


while bottles !=2
  song = "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer.\n"
  song +="Take one down and pass it around, #{(bottles-1)} bottles of beer on the wall.\n"
  puts song
  bottles -=1
end

puts "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n"
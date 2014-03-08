bottles = gets.chomp.to_i


while bottles >2
  song = "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer.\n"
  song +="Take one down and pass it around, #{(bottles-1)} bottles of beer on the wall.\n"
  puts song
  bottles -=1
end
if bottles == 2
  puts "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n"
end

puts "1 bottle of beer on the wall, 1 bottle of beer.\nTake one down and pass it around, no bottles of beer on the wall.\n"

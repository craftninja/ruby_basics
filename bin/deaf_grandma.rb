puts "Talk to Grandma, honey."

say_it = gets.chomp

year = rand(21)+1930

if say_it != say_it.upcase
  puts "HUH?! SPEAK UP SONNY!"
else
  puts "NO, NOT SINCE #{year}!"
end
#IO.foreach("/Users/emilyplatzer/gSchoolWork/ruby_basics/bin/birthday_data.csv") {|x| print  x }
=begin
Write a program that helps users find the birth date and age of a person. The program should:

Prompt the user for a name
Print that person's name and birth date and age based on the data in bin/birthday_data.csv
Skills

Converting a String to a Date
Printing a date in a friendly format
Reading and parsing data from a file
=end
require 'date'

data = IO.readlines("/Users/emilyplatzer/gSchoolWork/ruby_basics/bin/birthday_data.csv")
numpeeps = data.count - 1

i=0
data.each do |split_me|
  data[i]= split_me.split(",")
  i+=1
end


i=0
person = []

while i<numpeeps
  person[i] = {data[0][0].chomp=>data[i+1][0].chomp,
               data[0][1].chomp=>data[i+1][1].chomp,
               data[0][2].chomp=>data[i+1][2].chomp,
               data[0][3].chomp=>data[i+1][3].chomp}
  i+=1
end


time = Time.now
puts "Who's birthday are you looking for?"
name = gets.chomp

i=0
while i<numpeeps
  if name == person[i]["first_name"]
    age = time.year-person[i]["date_of_birth"].byteslice(0..3).to_i
    puts "#{Date.parse(person[i]["date_of_birth"]).strftime("%B%e, %Y")}, #{age.to_s} years old"
  end
  i+=1
end
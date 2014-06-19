require 'pp'
puts 'Whose birthday are you looking for?'
person = gets.chomp
persons_birthday = nil

raw_birthday_data = File.readlines('/Users/emilyplatzer/gSchoolWork/ze_archives/ruby_basics/bin/birthday_data.csv')

birthday_data = []
raw_birthday_data.each do |person_data|
  birthday_data << person_data.split(',')
end

birthday_data.each do |person_data|
  first_name = person_data[1]
  birthday = person_data[2]
  if first_name == person
    persons_birthday = birthday.split('/')
  end
end


month = Date.new(persons_birthday[0].to_i, persons_birthday[1].to_i,persons_birthday[2].to_i,).strftime("%B")

age = Date.today - Date.new(persons_birthday[0].to_i, persons_birthday[1].to_i,persons_birthday[2].to_i,)
p "#{month} #{persons_birthday[1].to_i}, #{persons_birthday[0].to_i}, #{age} years old"
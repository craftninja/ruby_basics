puts "What number?"

num = gets.chomp.to_i

m = num/1000
print "M"*m
remainder = num%1000
if remainder>=900
  print "CM"
  remainder = remainder %500
  remainder = remainder %100
else
  d = remainder/500
  print "D"*d
  remainder = remainder%500
  if remainder>=400
    print "CD"
    remainder = remainder %100
  else
    c = remainder/100
    print "C"*c
    remainder = remainder%100
  end
end
if remainder>=90
  print "XC"
  remainder = remainder %50
  remainder = remainder %10
else
  l = remainder/50
  print "L"*l
  remainder = remainder%50
  if remainder >=40
    print "XL"
    remainder = remainder %10
  else
    x = remainder/10
    print "X"*x
    remainder = remainder%10
  end

end

if remainder >=9
  print "IX"
  remainder = remainder %5
else
  v = remainder/5
  print "V"*v
  remainder = remainder%5
  if remainder >=4
    print "IV"
  else
    i = remainder/1
    print "I"*i
  end
end

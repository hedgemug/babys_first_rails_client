require 'unirest'

system 'clear'
puts "Choose an option"
puts "[1] Random fortune"
puts "[2] Lotto numbers"
puts "[3] Page visit counter"
puts "[4] Beer on the wall"

user_option = gets.chomp

if user_option == "1"
  response = Unirest.get("http://localhost:3000/fortune_url")
  random_fortune = response.body
  puts random_fortune
elsif user_option == "2"
  response = Unirest.get("http://localhost:3000/lotto_url")
  lotto_numbers = response.body
  puts lotto_numbers
elsif user_option == "3"
  response = Unirest.get("http://localhost:3000/count_url")
  count = response.body["visit_count"]
  puts "The number of visits is #{count}"
elsif user_option == "4"
  response = Unirest.get("http://localhost:3000/beer_url")
  song = response.body
  puts song
end

require 'json'
require 'pry'
require 'httparty'

response = HTTParty.get('http://json-server.devpointlabs.com/api/v1/users')

puts response.user['id']

def menu
    puts "Please make a selection:
    1) Get all Users
    2) See Specific User
    3) Create a New User
    4) Exit"
    @ui = input.to_i
end

def selection

end

menu

# require 'httparty'
# require 'pry'

# BASE_URL = 'http://json-server.devpointlabs.com/api/v1'

# def menu
#   puts '---RUBY DPL API---'
#   puts '1) All users'
#   puts '2) Look Up User by ID'
#   puts '3) Add a user'
#   puts '4) Delete A User'
#   puts '5) Edit A User'
#   puts "Type 'quit' at any time to quit"
#   puts 'Selection: '
#   @selection = gets.strip
# end

# def users_index
#   users = HTTParty.get("#{BASE_URL}/users").parsed_response
#   users.each do |user|
#     puts user['id']
#     puts user['first_name']
#     puts user['last_name']
#     puts user['phone_number']
#   end
# end

# def user_show
#   puts 'Enter the user ID:'
#   id = gets.strip.to_i
#   user = HTTParty.get("#{BASE_URL}/users/#{id}").parsed_response
#   puts user['first_name']
#   puts user['last_name']
#   puts user['phone_number']
# end

# def user_create
#   puts 'Enter the users first name:'
#   first = gets.strip
#   puts 'Enter the users last name:'
#   last = gets.strip
#   puts 'Enter the users phone number:'
#   number = gets.strip
#   HTTParty.post("#{BASE_URL}/users?user[first_name]=#{first}&user[last_name]=#{last}&user[phone_number]=#{number}")
# end

# def user_delete
#   puts 'Enter the ID of the user you want to delete:'
#   id = gets.strip.to_i
#   HTTParty.delete("#{BASE_URL}/users/#{id}")
# end

# def user_edit
#   puts 'Enter the ID of the user you want to edit:'
#   id = gets.strip.to_i
#   user = HTTParty.get("#{BASE_URL}/users/#{id}").parsed_response
#   puts user['first_name']
#   puts user['last_name']
#   puts user['phone_number']
#   puts 'Is this the user you want to edit? Yes or No'
#   response = gets.strip
#   if response == 'yes' || response == 'Yes' || response == 'y'
#     puts 'Enter the new first name:'
#     first = gets.strip
#     puts 'Enter the new last name:'
#     last = gets.strip
#     puts 'Enter the new phone number:'
#     number = gets.strip
#     HTTParty.put("#{BASE_URL}/users/#{id}?user[first_name]=#{first}&user[last_name]=#{last}&user[phone_number]=#{number}")
#   else
#     user_edit
#   end
# end

# print `clear`
# loop do
#   case menu
#     when '1'
#       users_index
#     when '2'
#       user_show
#     when '3'
#       user_create
#     when '4'
#       user_delete
#     when '5'
#       user_edit
#     when "Quit", "quit", "q", "QUIT", "Q"
#       puts "Goodbye!"
#       break
#     else
#       puts "Invalid selection, try again"
#   end
# end
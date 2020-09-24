require 'colorize'
require 'artii'

begin
    a = Artii::Base.new
   puts a.asciify('nekoneko').green
   puts 'What would you like to do?'.bold,
   '1 - Check In',
   '2 - Check Out',
   '3 - View All Cats',
   '4 - View Single Cat',
   '5 - Show Meals',
   '6 - Quit'

   input = gets.chomp.strip

   puts input

rescue => exception
    
end
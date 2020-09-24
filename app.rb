require_relative 'dispatch'

require 'colorize'
require 'artii'

begin
    a = Artii::Base.new
   puts a.asciify('purrito').magenta
   puts 'What would you like to do?'.bold,
   '1 - Check In 🌶️',
   '2 - Check Out',
   '3 - View All Cats',
   '4 - View Single Cat',
   '5 - Show Meals',
   '6 - Quit'

   cmd = gets.chomp.strip
   dispatch cmd

rescue => exception
    
end until ['quit', 'q', 'exit', '6'].include? cmd
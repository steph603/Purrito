require_relative 'dispatch'

require 'colorize'
require 'artii'
require 'tty-cursor'

begin
    a = Artii::Base.new
    puts a.asciify('purrito').magenta

    cursor = TTY::Cursor

   puts 'What would you like to do?'.bold,
   '1 - Check In 🌶️',
   '2 - Check Out',
   '3 - Create New Cat',
   '4 - View All Cats',
   '5 - View Current Guests',
   '6 - View Single Cat',
   '7 - Show Meals',
   '8 - Quit'

   cmd = gets.chomp.strip
   dispatch cmd

rescue => exception

end until ['quit', 'q', 'exit', '8'].include? cmd
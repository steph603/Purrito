require_relative 'dispatch'

require 'colorize'
require 'artii'
require 'tty-cursor'
require 'tty-table'
puts "\n\nWelcome to...".magenta
a = Artii::Base.new
puts a.asciify("purrito").magenta
cursor = TTY::Cursor


table = TTY::Table.new(header: ['Squirrel', '🌶️ 🌶️ 🌶️'])
table << ['AM - Wet Noodles', 'PM - Wet Noodles'] << ['c3', 'c4'] << ['🌶️', 'Something']


puts table.render(:unicode, padding: [1,1,0,1])



begin
   puts "\n\nWhat would you like to do?\n".bold,
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
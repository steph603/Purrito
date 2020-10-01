require_relative 'dispatch'
require 'colorize'
require 'artii'
require 'tty-table'
require 'tty-prompt'
# require 'ruby2d'

puts "\n\nWelcome to...".magenta
a = Artii::Base.new
puts a.asciify("purrito").magenta

# purr = Sound.new('purr.mp3')
# purr.play

begin
 choices = [
      { name: " View All Cats", value: 5},     
      { name: " View Checked In Cats", value: 4},
      { name: " Check In", value: 1},
      { name: " Check Out", value: 2 },
      { name: " Create New Cat", value: 3},
      { name: " View One Cat", value: 6},
      { name: " Show Meals", value: 7 },
      { name: " Quit", value: 8 }
    ]

    prompt = TTY::Prompt.new(symbols: {marker: "🌶️ "}).select("\n\nWhat would you like to do?\n".bold, choices, cycle: true, per_page: 8, active_color: :magenta)

   dispatch prompt
end until prompt == 8
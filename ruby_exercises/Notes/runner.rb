require './unicorn'
require './power'
#tells the runner file about the
#unicorn class file

unicorn_1 = Unicorn.new("Fred", "Silver")
unicorn_2 = Unicorn.new("Julie", "Purple")

unicorn_1.say_hello
unicorn_2.say_hello

unicorn_1.add_power("Invisibility", "Super Strength")

require 'pry' ; binding.pry
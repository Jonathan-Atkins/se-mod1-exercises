require './unicorn'
#tells the runner file about the
#unicorn class file

unicorn_1 = Unicorn.new("Fred", "Silver")
unicorn_2 = Unicorn.new("Julie", "Purple")

require 'pry' ; binding.pry
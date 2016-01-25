#!/usr/bin/env ruby

class MutantsApplication
  def get_more_mutants
    print 'What is your real name? '
    real_name = gets.chomp

    print "How about that mutant name, #{real_name}? "
    mutant_name = gets.chomp

    print "What is your mutant power? "
    mutant_power = gets.chomp

    puts "Hi there, #{real_name}. Your mutant name is #{mutant_name}, with the power of #{mutant_power}."
  end

  def display_roster
    # Print all of the mutant names.
  end
end

app = MutantsApplication.new

3.times do
  app.get_more_mutants
end

#!/usr/bin/env ruby

class MutantsApplication
  def initialize
    @roster = []
  end

  def get_more_mutants
    mutant = {}
    print 'What is your real name? '
    mutant[:real_name] = gets.chomp

    print "How about that mutant name, #{mutant[:real_name]}? "
    mutant[:mutant_name] = gets.chomp

    print "What is your mutant power? "
    mutant[:power] = gets.chomp

    @roster << mutant
  end

  def display_roster
    puts 'ROSTER ========================='
    @roster.each_with_index do |mutant, i|
      puts "==== Mutant #{i} - #{mutant[:mutant_name]} ========"
      mutant.each do |field_name, field_value|
        puts "* #{field_name}: #{field_value}"
      end
    end
  end
end

app = MutantsApplication.new

3.times do
  app.get_more_mutants
end

app.display_roster

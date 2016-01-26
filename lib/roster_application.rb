require 'bundler/setup'
Bundler.require

class RosterApplication
  include Mutantcorp::Mutant

  def initialize
    @roster = []
  end

  def get_more_mutants
    mutant = Mutant.new
    print 'What is your real name? '
    mutant.real_name = gets.chomp

    print "How about that mutant name, #{mutant.real_name}? "
    mutant.mutant_name = gets.chomp

    print "What is your mutant power? "
    mutant.power = gets.chomp

    @roster << mutant
  end

  def display_roster
    puts 'ROSTER ========================='
    @roster.each_with_index do |mutant, i|
      puts "==== Mutant #{i} - #{mutant.mutant_name} ========"
      mutant.attributes.each do |attribute, value|
        puts "* #{attribute}: #{value}"
      end
    end
  end

  def random_fight
    # pick two random mutants
    # make them use their powers against each other
  end
end

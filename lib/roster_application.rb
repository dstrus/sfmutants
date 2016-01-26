require 'bundler/setup'
Bundler.require

Strus.smoosh_the_world

class RosterApplication
  include Mutantcorp::Mutant

  def initialize
    @roster = []
  end

  def add_mutant(mutant)
    @roster << mutant
  end

  def get_more_mutants
    mutant = Mutant.new
    print 'What is your real name? '
    mutant.real_name = gets.chomp

    print "How about that mutant name, #{mutant.real_name}? "
    mutant.mutant_name = gets.chomp

    print "What is your mutant power? "
    mutant.power = gets.chomp

    add_mutant mutant
  end

  def render_roster
    rendered_roster = "ROSTER =========================\n"
    @roster.each_with_index do |mutant, i|
      rendered_roster << "==== Mutant #{i} - #{mutant.mutant_name} ========\n"
      mutant.attributes.each do |attribute, value|
        rendered_roster << "* #{attribute}: #{value}\n"
      end
    end
    rendered_roster
  end

  def smoosh_roster
    @roster.map { |mutant| mutant.attributes.smoosh }.smoosh
  end

  def random_fight
    # pick two random mutants
    # make them use their powers against each other
  end
end

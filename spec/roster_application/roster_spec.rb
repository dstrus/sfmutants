require 'spec_helper'

describe RosterApplication do
  before do
    @roster = RosterApplication.new
    @test_mutant = Mutantcorp::Mutant::Mutant.new({
      real_name:   'Amanda',
      mutant_name: 'Storm',
      power:       'fire'
    })
  end

  it 'displays the roster with a mutant' do
    @roster.add_mutant @test_mutant
    @roster.render_roster.must_match 'real_name: Amanda'
  end
end

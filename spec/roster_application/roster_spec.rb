require 'spec_helper'
include Mutantcorp::Mutant

describe RosterApplication do
  before do
    @roster = RosterApplication.new
    @test_mutant = Mutant.new({
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

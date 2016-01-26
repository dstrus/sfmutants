#!/usr/bin/env ruby
require_relative 'lib/roster_application'

app = RosterApplication.new

3.times do
  app.get_more_mutants
end

app.display_roster
app.random_fight

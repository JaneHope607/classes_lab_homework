require('minitest/autorun')
require('minitest/reporters')
require_relative('../sport_team.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestTeam < Minitest::Test
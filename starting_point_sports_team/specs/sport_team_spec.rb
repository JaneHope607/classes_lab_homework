require('minitest/autorun')
require('minitest/reporters')
require_relative('../sport_team.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestTeam < Minitest::Test


    def test_team_name
        new_team = Team.new("The Wildcats", ["Ross", "Bob", "Jess", "Lucy"], "Arnold Palmer")
        assert_equal("The Wildcats", new_team.team_name())
    end


end
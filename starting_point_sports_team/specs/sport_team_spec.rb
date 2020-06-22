require('minitest/autorun')
require('minitest/reporters')
require_relative('../sport_team.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestTeam < Minitest::Test


    def test_team_name
        new_team = Team.new("The Wildcats", ["Ross", "Bob", "Jess", "Lucy"], "Arnold Palmer")
        assert_equal("The Wildcats", new_team.team_name())
    end

    def test_players
        new_team = Team.new("The Penguins", ["Smith", "Will", "Rob", "Emma"], "Will Smith")
        assert_equal(["Smith", "Will", "Rob", "Emma"], new_team.players())
    end

    def test_coach
        new_team = Team.new("The Penguins", ["Smith", "Will", "Rob", "Emma"], "Will Smith")
        assert_equal("Will Smith", new_team.coach())
    end

    def test_set_coach
        new_team = Team.new("The Penguins", ["Smith", "Will", "Rob", "Emma"], "Will Smith")
        new_team.coach = "Rob Ross"
        assert_equal("Rob Ross", new_team.coach())
    end

end
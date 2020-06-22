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

    def test_add_new_player()
        new_team = Team.new("The Rovers", ["Smith", "Will", "Rob", "Emma"], "Will Smith")
        new_team.add_new_player("Jane")
        assert_equal(["Smith", "Will", "Rob", "Emma", "Jane"], new_team.players())
    end

    def test_check_for_player__found()
        new_team = Team.new("The Rovers", ["Jane", "Bob", "Rob", "Emma"], "Will Smith")
        assert_equal(true, new_team.check_for_player("Jane"))
    end

    def test_check_for_player__not_found()
        new_team = Team.new("The Rovers", ["Jane", "Bob", "Rob", "Emma"], "Will Smith")
        assert_equal(false, new_team.check_for_player("Bill"))
    end

    def test_points_update__win()
        new_team = Team.new("Tigers", ["Jane", "Bob", "Rob", "Emma"], "John")
        new_team.points_update("win")
        assert_equal(1, new_team.points)
    end

    def test_points_update__lose()
        new_team = Team.new("Tigers", ["Jane", "Bob", "Rob", "Emma"], "John")
        new_team.points_update("lose")
        assert_equal(-1, new_team.points)
    end

end
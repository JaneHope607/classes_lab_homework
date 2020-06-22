class Team

    attr_accessor :team_name, :players, :coach, :points

    def initialize(team_name, players, coach)
        @team_name = team_name
        @players = players
        @coach = coach
        @points = 0
    end

    def add_new_player(new_player)
        @players.push(new_player)
    end

    def check_for_player(player_name)
       for player in @players
        return true if player == player_name 
       end
       return false
    end

    def points_update(result)
        @points += 1 if (result == "win")
        @points -=1 if result == "lose"
    end


    # def team_name
    #     return @team_name
    # end

    # def players
    #     return @players
    # end
    
    # def coach
    #     return @coach
    # end

    # def set_coach
    #     @coach = coach
    # end

end
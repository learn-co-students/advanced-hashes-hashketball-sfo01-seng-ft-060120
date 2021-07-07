# Write your code below game_hash
require 'pry'
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end
# def player(player_name)

end

# Build a method, num_points_scored that takes in an argument of a player's name and returns the number of points scored for that player.
def num_points_scored(player_name)
game_hash.each do |team_place, team_info|
  team_info[:players].each do |player| 
    if player[:player_name] == player_name
      return player[:points]
  # binding.pry
      end
    end
  end
end

# Build a method, shoe_size, that takes in an argument of a player's name and returns the shoe size for that player.
def shoe_size(player_name)
  game_hash.each do |team_place, team_info|
    team_info[:players].each do |player|
      if player[:player_name] == player_name
        return player[:shoe]
  # binding.pry
      end
    end
  end
end

# Build a method, team_colors, that takes in an argument of the team name and returns an Array of that team's colors.
def team_colors(team_name)
  game_hash.each do |team_place, team_info|
    if team_info[:team_name].include? team_name
      return team_info[:colors]
  # binding.pry
    end 
  end
end

# Build a method, team_names, that operates on the game Hash to return an Array of the team names.
def team_names
 home_away_team = [game_hash[:home][:team_name], game_hash[:away][:team_name]]
 return home_away_team
 binding.pry
end

# Build a method, player_numbers, that takes in an argument of a team name and returns an Array of the jersey numbers for that team.
def player_numbers(team_name)
  game_hash.each do |team_place, team_info|
    if team_info[:team_name] == team_name 
    return team_info[:players].map{ |player| player[:number]}
    end
  end
end
# since team_info iterates over the keys of team_name:, colors:, & players: 
#if we ask for the [:players] key and iterate over it with map (meaning map will touch everything in players)
# using player to be the keys inside our :players to iterate we ask map to find the values of :number and return them in an array


# Build a method, player_stats, that takes in an argument of a player's name and returns a hash of that player's stats.
def player_stats(name)
  game_hash.each do |team_place, team_info|
    team_info[:players].each do |player|
      if player[:player_name] == name 
        return player.delete_if { |key, value|
        # binding.pry
          [:player_name].include?! key}
      # binding.pry
    end
    end
  end
end

# Build a method, big_shoe_rebounds, that will return the number of rebounds associated with the player that has the largest shoe size. Break this one down into steps:
def big_shoe_rebounds
  large_shoe = 0 
  rebounds = 0
  game_hash.each do |place, info|
    info[:players].each do |player|
         size_shoe = player[:shoe]
         #we assign player[:shoe] to size_shoe, if we don't, we raise a TypeError:  no implicit conversion of Integer into Hash
        if size_shoe > large_shoe
         large_shoe = size_shoe
         rebounds = player[:rebounds]
        # binding.pry
         end
      end
    end
    rebounds
  end




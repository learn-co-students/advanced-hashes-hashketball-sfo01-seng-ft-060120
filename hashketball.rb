require "pry"
# Write your code below game_hash
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

def num_points_scored(scorer)
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if data.is_a?(String) 
        data.split('').each do |data_items|
        end 
      elsif data.is_a?(Array)
        data.each do |element|
          if element.is_a?(String)
            element.split('').each do |element_items|
            end
          elsif element.is_a?(Hash)
            element.each do |data_type, player_stat|
              if player_stat == scorer
                return element[:points]
              end 
            end 
          end 
        end 
      end 
    end
  end
end

def shoe_size (player_name)
    game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if data.is_a?(String) 
        data.split('').each do |data_items|
        end 
      elsif data.is_a?(Array)
        data.each do |element|
          if element.is_a?(String)
            element.split('').each do |element_items|
            end
          elsif element.is_a?(Hash)
            element.each do |data_type, player_stat|
              if player_stat == player_name
                return element[:shoe]
              end 
            end 
          end 
        end 
      end 
    end
  end
end 

def team_colors(team_name)
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if data == team_name
        return game_hash[location][:colors]
      end 
    end 
  end 
end 

def team_names 
  team_array = []
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :team_name
        team_array << data
      end 
    end 
  end 
  team_array
end 

def player_numbers (team_name)
  jersey_numbers = []
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if data == team_name
        game_hash[location][:players].each do |players|
          players.each do |data_type, player_stat|
            if data_type == :number
              jersey_numbers << player_stat
            end 
          end 
        end
      end 
    end 
  end 
  jersey_numbers
end 

def player_stats(player_name)
  stats = {}
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if data.is_a?(String) 
        data.split('').each do |data_items|
        end 
      elsif data.is_a?(Array)
        data.each do |element|
          if element.is_a?(String)
            element.split('').each do |element_items|
            end
          elsif element.is_a?(Hash)
            element.each do |data_type, player_stat|
              if player_stat == player_name
                stats = element
              end 
            end 
          end 
        end 
      end 
    end
  end
  stats 
end
  
def big_shoe_rebounds
  shoe_size = 0 
  rebound = 0 
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if data.is_a?(String) 
        data.split('').each do |data_items|
        end 
      elsif data.is_a?(Array)
        data.each do |element|
          if element.is_a?(String)
            element.split('').each do |element_items|
            end
          elsif element.is_a?(Hash)
            element.each do |data_type, player_stat|
              if element[:shoe] > shoe_size
                shoe_size = element[:shoe]
                rebound = element[:rebounds]
              end
            end 
          end 
        end 
      end 
    end
  end
  rebound
end


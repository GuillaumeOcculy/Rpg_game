load 'character.rb'
load 'warrior.rb'
load 'knight.rb'
load 'witch.rb'
load 'game.rb'


name_player_1 = Character.ask_name("Player 1")
player1 = Character.ask_class(name_player_1)

name_player_2 = Character.ask_name("Player 2")
player2 = Character.ask_class(name_player_2)

3.times {puts ""}

Game.start_fight(player1, player2)

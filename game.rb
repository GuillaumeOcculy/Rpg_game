class Game
  def self.start_fight(player1, player2)
    puts "LET THE GAME BEGINS"
    attacker = player1
    defender = player2
    while player1.hp > 0 && player2.hp > 0
      player1.show_stat
      10.times{print "-"}
      puts ""
      player2.show_stat
      10.times{print "-"}
      3.times {puts ""}

      puts "#{attacker.name}, What do you want ?"
      attacker.attacks.each_key do |k|
        puts k
      end
      puts "1.#{attacker.attacks[:normal_attack]}\n2.#{attacker.attacks[:special_attack]}"

      print ">"
      choice = $stdin.gets.chomp().to_i
      if choice == 1
        attacker.attack(defender)
      else
        attacker.special_attack
      end

      temp = defender
      defender = attacker
      attacker = temp

    end
    puts "WE have a Winner !\n CONGRATULATIONS TO #{defender.name} "
  end

end

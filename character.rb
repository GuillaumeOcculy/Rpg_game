class Character

  attr_accessor :name, :type, :hp, :damage, :attacks

  def initialize(name)
    @name = name
  end

  def description_attack
    puts "1. #{normal_attack} 2.#{special_attack}"
  end



  def attack(player)
    puts "#{@name} attack on #{player.name} !"
    player.hp -= @damage
  end

  def show_stat
    puts "Name: #{@name}\nHp: #{@hp}\nDamage: #{@damage}"
  end

  def special_attack
    improve_weapon
  end

  def self.ask_name(player)
    puts "#{player}, choose a name :"
    print ">"
    $stdin.gets.chomp()
  end

  def self.ask_class(name)
    choice = 99
    while choice.to_i > 3
      puts "Choose a class\n 1. Warrior\n 2. Knight\n 3. Witch"
      print ">"
      choice = $stdin.gets.chomp().to_i
    end

    player = case choice
      when 1
        Warrior.new(name)
      when 2
        Knight.new(name)
      when 3
        Witch.new(name)
    end
  end

  

  def normal_attack
  end

  def special_attack
  end
end

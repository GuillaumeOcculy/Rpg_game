load 'character.rb'
class Witch < Character
  def initialize(name)
    super(name)
    @type = "witch"
    @hp = 50
    @damage = 5
    @attacks = {normal_attack: "Attack", special_attack: "Heal +10"}
  end

  def list_attack
    [attack, special_attack]
  end
  def special_attack
    heal_player
  end

  private
  def heal_player
    @hp += 10
    puts "Healing of the player"
  end
end

witch = Witch.new("guillaume")
puts witch.inspect
puts witch.attacks.each do |a|
  p a.inspect
end

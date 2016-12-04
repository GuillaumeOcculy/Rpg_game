load 'character.rb'
class Warrior < Character
  def initialize(name)
    super(name)
    @type = "warrior"
    @hp = 100
    @damage = 20
    @attacks = {normal_attack: "Attack rival", special_attack: "Improve weapon +5"}
  end

  def special_attack
    name
  end


  private
  def improve_weapon
    self.damage += 5
    puts "Improvement on weapon has been done"
  end
end

load 'character.rb'
class Knight < Character
  def initialize(name)
    super(name)
    @type = "knight"
    @hp = 150
    @damage = 10
    @attacks = {normal_attack: attack(player), special_attack: improve_weapon}
  end
end

# knight = Knight.new("West")
# puts knight.inspect
# knight.attacks.each_key  do |k|
#   puts k
# end
# a = {normal: ["Normal attack", 15]}
# puts a.inspect
# a.each do |k,v|
#   puts "Key:#{k}--Value:#{v}"
#   puts "-----"
#   v.each do |a,b|
#     puts "2eKey: #{a}--- 2eValue:#{b}"
#   end
# end

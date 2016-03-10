require_relative "game"

# =NameError: uninitialized constant Zombie::MAP
# = from /Users/renealejandrotapiahidalgo/Desktop/zombies_ruby/zombie.rb:7:in `initialize'
# = from /Users/renealejandrotapiahidalgo/Desktop/zombies_ruby/zombie.rb:28:in `new'
# = from /Users/renealejandrotapiahidalgo/Desktop/zombies_ruby/zombie.rb:28:in `<top (required)>'
# = from /Users/renealejandrotapiahidalgo/Desktop/zombies_ruby/game.rb:2:in `require_relative'
# = from /Users/renealejandrotapiahidalgo/Desktop/zombies_ruby/game.rb:2:in `<top (required)>'
# = from (irb):1:in `require_relative'
# = from (irb):1
# = from /usr/bin/irb:12:in `<main>'
class Zombie
    attr_accessor :posx, :posy
    
    def initialize (name, posx=nil, posy=nil)
        @name = name
        @posx = posx || rand(1..MAP[0])
        @posy = posy || rand(1..MAP[0])
    end
    
    def walk
        walk_x = rand(-1..1)
        walk_y = rand(-1..1)
        self.posx = posx + walk_x
        self.posy = posy + walk_y
        puts "im searching for #{talk} in [ #{posx},#{posy} ]"
    end
    
    def talk
        puts = "BRAAAAINS !!"
    end
    
end



zombie1=Zombie.new("zombi")
zombie1.walk

class Person
	attr_accessor :posx, :posy

	def initialize (name, posx=nil, posy=nil)
		@name = name
		@posx = posx || rand(1..MAP[0])
		@posy = posy || rand(1..MAP[0])   
	end

	def run
		run_x = rand(-2..2)
		run_y = rand(-2..2)
		self.posx = posx + run_x
		self.posy = posy + run_y
		puts "run for your lives"
	end

end
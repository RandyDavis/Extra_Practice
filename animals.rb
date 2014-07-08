class Dog
	attr_reader :name, :type
	def initialize(name, health = 50, type="dog")
		@name = name
		@health = health
		@type = type
	end

	def eat_cat(cat)
		cat.health -= 5
		puts "#{@name} has taken a bite out of #{cat.name}, reducing #{cat.name}'s health to #{cat.health}."
	end

end


class Cat
	attr_accessor :name, :health, :type
	def initialize(name, health= 30, type="cat")
		@name = name
		@health = health
		@type = type
	end

	
end

fido = Dog.new("Fido")
merlin = Cat.new("Merlin")
puts merlin.health # 30

fido.eat_cat(merlin) # Fido has taken a bite out of Merlin, reducin, Merlin's health to 25

puts merlin.health # 25

albert = Dog.new("Albert")
krispy = Dog.new("Krispy")

will = Cat.new("Will")

dog_cat = [fido, merlin, albert, krispy, will]

p dog_cat.map { |x| x.name }

# "Fido is a dog"
# "Merlin is a cat"
dog_cat.each do |n|
	puts "#{n.name} is a #{n.type}."
end

dogs = []
cats = []
dog_cat.each do |q|
	if q.type == "dog"
		dogs<<q
	elsif q.type == "cat"
		cats<<q
	end
end

p dogs.length
p cats.length
			




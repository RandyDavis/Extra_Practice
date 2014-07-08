# First look at this code and then complete the exercises that follow
 
class Pet
  attr_accessor :age, :name
  
  def initialize(type, name, age)
    @type = type
    @name = name
    @age = age
  end
end
 
marlo = Pet.new('dog', 'Marlo', 3)
boots = Pet.new('cat', 'Boots', 5)
goldy = Pet.new('gold fish', 'Goldy', 1)
 
pet_array = [marlo, boots, goldy]
 
# using pet_array, create an array of just the pet names: ["Marlo", "Boots", "Goldy"]. Try it using the method 'map'
# write the answer here
pet_array.map do |x|
    x.name
end
# create a method that goes through pet_array and increments each pet's age by 1
# write the answer here
def age_increase(pet_arr)
    pet_arr.each do |x|
        x.age += 1
    end
end
     
# using pet_array, select the pet with the name 'Boots'. Try doing this with the 'select' and 'find' method. 
# write the answer here
 pet_array.select {|v| v.name == "Boots"}  
 pet_array.find {|ob| ob.name == "Boots"}
# what is the difference between the methods 'select' and 'find'?
# "The difference between the methods 'select' and 'find' are that 'select' returns an array containing all elements for which the given block returns a true value and 'find' returns the first for which block is not false." 

############################################################################################################################
############################################################################################################################
 
# what will be the value of x after we run this line of code? 
x = nil && "hello world"  # => "hello world"
# why is that the case?
# answer here
  # I got this one wrong.  After running and researching, is it because nil is an instance of NilClass and is closer to the top of the object tree?
# what will be the value of x after we run this line of code? 
x = "goodbye" && "hello world" #=> "hello world"
# why is that the case?
# x will be "hello world" because in this case x needs multiple values to be true, x will be the last value assigned to it.
 
# what will be the value of x after we run this line of code? 
x = "goat" || "cat" # => "goat"
# why is that the case?
# x will be "goat" in this case since it only needs one value to be true and "goat" is the first value it receives.
 
# what will be the value of x after we run this line of code?
x = nil || "eureka"  #=> "eureka"
# why is that the case?
# x can not return true if it takes the value nil so it must take "eureka" in this case.
 
############################################################################################################################
############################################################################################################################
 
# Use an each loop on the outter array and print out the information about each
# of my friends. 
# For example, you might print 'Bob is a builder'
 
my_friends = [
    {
        :name => "Bob",
        :occupation => "Builder"
    },
    {
        :name => "Dora",
        :occupation => "Explorer"
    },
    {
        :name => "Mandy",
        :occupation => "Handy(wo)man"
    },
]
 
# answer here
my_friends.each do |x|
    puts "#{x[:name]} is a #{x[:occupation]}."
end

############################################################################################################################
############################################################################################################################
 
# Iterate through the array of the Smith family members using `each` and add the last name to each person. The array should look like this at the end: `["John Smith", "Jane Smith", "Jacob Smith"]`
 
smith_family = ["John", "Jane", "Jacob"]
last_name = "Smith"
 
# answer here
new_names = smith_family.each do |x|
    x << " " << last_name
end

new_names = smith_family.map do |x|
    x << " " << last_name
end


def hats
   puts "blah blah lovely hat"
    "cap"
end

x = hats 

# def puts(string)
#     # prinsts string to screen 
#     nil
# end


arr = [2,4,3]

arr.each do |x|
    puts x
end

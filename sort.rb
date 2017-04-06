class Person
	attr_reader :age, :name
	def initialize(name, age)
		@name = name
		@age = age
	end
end

def sort_people(people)
	people.sort do |x, y|
		x.age <=> y.age
	end
end

def sort_people2(people, comparer)
	people.sort do |x, y|
		comparer.call(x) <=> comparer.call(y)
	end
end

grab_age = lambda do |person|
	person.age
end

ken = Person.new("Ken", 28)
marco = Person.new("Aarco", 31)
erica = Person.new("Erica", 20)
cindy = Person.new("Cindy", 14)

people = [ken, marco, erica, cindy]

sorted_people = sort_people(people)
puts sorted_people.inspect

sorted_people2 = sort_people2(people, grab_age)
puts sorted_people2.inspect

#rewrite, if you do it this way, you don't need the grab_age
#thing above
sorted_people3 = sort_people2(people, lambda{ |person| person.name})
puts sorted_people3.inspect



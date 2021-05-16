#booleanos

isOnline = true
isOffline = false

#comparaciones < > >= <=

puts isOffline == isOnline

puts isOffline != isOnline

# declaraciones if

if isOffline == isOnline
	puts "correcto"
elsif isOnline != isOffline
	puts "correcto tambien"
else
	puts "tambien es correcto"	
end

#se efecuta cuando un condicional es falso
unless isOffline == isOnline
	puts "chevere" 	
end

#operadores lógicos || ! &&
a = 1
b = 2

if  a > b && b < 11
	puts "bien"
end

#case
case a
when 1, 3, 4
	puts "#{a}"
when 2
	puts "#{a}"
else
	puts "#{a}"
end

#bucles while y until
x = 0 
while x < 10
	puts x
	x += 1
end

until a > 10
	puts "a = #{a}"
end

#rangos

a = (1..7)to_a
b = (1...8)to_a

#bucle for

for i in (1..10)
	break if i == 3
	puts i
end

#bucle loop
x = 0
loop do
	puts x
	x += 1
	break if x > 10
end

#arreglo

items = [1,2,3]
puts items[2]

items.push(2)
items.insert(2, 8)
items.pop
items.delete.at(2)

#operaciones de arreglos

oItems = (1..6).to_a
a = items & oItems
b = items | oItems
oItems.reverse!
items.sort
items.uniq
items.uniq!
#items.freeze
items.include?(3)
items.min 
items.max
items.size

#tablas hash

tHash = {"al" => 24, "cd" => 22}
puts tHash["al"]

h = {name:"dave", age:12, otro:23}
puts h[:name]

h.delete(:age)
h.key("dave")
h.invert

#iteradores
a = (1..20).to_a
b = 0
a.each do |x|
	sum += x
end

h.each do |key, value|
	puts "#{key} => #{value}"
end

10.times do
	puts "cuenta"
end

#metodos

def say
	puts "hi"
end
say

def say2 (x, b)
	puts x+b
end
say2(1,2)

def say3 (x, a, *b=2)
	puts x*b+a
end
say3(1,2)
say3(1,2,3)
say3(1,2,3,4)

#Alcance global

$x = 42

#clases y objetos
class Person
	attr_accessor :age, :color 
	@name = " "
	@@variable_de_clase = 0
	def initialize(name)
		@name = name
		@@variable_de_clase += 1
		puts "Hi there #{@name} #{@@variable_de_clase}"
	end
	def bark
		puts "ooo"
	end
	def set_name=(name)
		@name = " "
	end

	def name
		@name = name
	end

end

objeto = Person.new("alejandro")
objeto.bark
objeto.set_name("alfa")
objeto.name
objeto.age = 23

#herencia
class Boy < Person
end

#String
phrase = "hola mundo"
phrase.include? "hola"

phrase.index "hola"
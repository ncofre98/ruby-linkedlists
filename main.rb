require_relative 'lib/node'
require_relative 'lib/linked_list'

list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')
list.insert_at('Néstor', 0)
puts list
list.remove_at(300)

puts list

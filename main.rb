require_relative 'lib/node'
require_relative 'lib/linked_list'

ll = LinkedList.new
ll.append('A')
ll.append('B')
#ll.append('C')
ll.prepend('Test')
ll.append('C')
ll.append('D')
ll.append('Rosa')

=begin
p ll
p ll.size
p ll.tail

ll.append('Last')
puts "The last one tail is:"
p ll.tail
=end

puts ll
puts ll.find('Test')
ll.pop
puts ll.find('B')
puts ll
ll.prepend('Rosita Spain')
puts ll

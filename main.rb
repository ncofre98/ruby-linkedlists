require_relative 'lib/node'
require_relative 'lib/linked_list'

ll = LinkedList.new
ll.append('A')
ll.append('B')
ll.append('C')
ll.prepend('Test')

=begin
p ll
p ll.size
p ll.tail

ll.append('Last')
puts "The last one tail is:"
p ll.tail
=end

p ll.at(0)
p ll.at(1)
p ll.at(2)

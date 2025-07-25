require_relative 'lib/node'
require_relative 'lib/linked_list'

ll = LinkedList.new
ll.append('A')
ll.append('B')
ll.append('C')
ll.prepend('Test')
p ll
p ll.size

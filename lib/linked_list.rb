class LinkedList
  attr_accessor :head
  
  def initialize
    @head = nil
  end

  def append(value)
    node = Node.new(value)
    if head.nil?
      self.head = node
    else
      current = head
      while !current.next_node.nil?
        current = current.next_node
      end
      current.next_node = node
    end
  end
end

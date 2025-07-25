class LinkedList
  attr_accessor :head, :tail, :size
  
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

  def prepend(value)
    node = Node.new(value)
    if head.nil?
      self.head = node
    else
      node.next_node = self.head
      self.head = node
    end
  end

  def size
    return 0 if head.nil?
    size = 1
    current = head
    while !current.next_node.nil?
      size += 1
      current = current.next_node
    end
    size
  end

  def tail
    return nil if head.nil?
    current = head
    while !current.next_node.nil?
      current = current.next_node
    end
    current
  end
end

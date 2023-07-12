# frozen_string_literal: true

# Node
class Node
  attr_accessor :value, :prev, :next

  def initialize(value)
    @value = value
    @prev = nil
    @next = nil
  end
end

# Node
class DoublyLinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def insert(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      current = @head
      current = current.next while current.next
      current.next = new_node
      new_node.prev = current
    end
  end

  def remove(value)
    return if @head.nil?

    current = @head

    if current.value == value
      @head = current.next
      @head.prev = nil if @head
      return
    end

    current = current.next while current.next && current.next.value != value

    return if current.next.nil?

    next_node = current.next.next
    current.next = next_node
    next_node.prev = current if next_node
  end

  def swap(value1, value2)
    return if @head.nil? || value1 == value2

    node1 = find_node(value1)
    node2 = find_node(value2)

    return if node1.nil? || node2.nil?

    prev1 = node1.prev
    next1 = node1.next
    prev2 = node2.prev
    next2 = node2.next

    node1.prev = prev2
    node1.next = next2
    node2.prev = prev1
    node2.next = next1

    prev1.next = node2 if prev1
    next1.prev = node2 if next1
    prev2.next = node1 if prev2
    next2.prev = node1 if next2

    @head = node2 if @head == node1
  end

  def display
    current = @head

    while current
      print "#{current.value} "
      current = current.next
    end
    puts
  end

  private

  def find_node(value)
    current = @head

    current = current.next while current && current.value != value

    current
  end
end

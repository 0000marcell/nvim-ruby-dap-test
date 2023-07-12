# frozen_string_literal: true

require_relative 'linked_list'

# ListCreator
class ListCreator
  def initialize
    @list = DoublyLinkedList.new
  end

  def start
    [1, 2, 3, 4].each do |number|
      @list.insert(number)
    end
    @list.remove(3)
    @list.swap(1, 4)
  end
end

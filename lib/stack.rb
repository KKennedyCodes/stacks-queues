require 'linked_list.rb'

class Stack
  def initialize
    # @store = ...
    @store = LinkedList.new
  end
  
  def push(element)
    @store.add_last(element)
  end
  
  def pop
    raise ArgumentError if @store.empty?
    return @store.remove_last
  end
  
  def empty?
    return @store.empty?
  end
  
  def to_s
    return @store.to_s
  end
end

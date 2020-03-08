class Queue
  
  def initialize
    # @store = ...
    @store = Array.new(100)
    @max_size = 100
    @front = @back = -1
  end
  
  def enqueue(element)
    if @front == -1
      @front = 0
      @back = 1
      @store[@front] = element
    elsif @front == @back
      raise ArgumentError, "Full Queue"  
    else
      @store[@back] = element
      @back = (@back + 1) % @max_size
    end
  end
  
  def dequeue
    if @front == -1
      raise ArgumentError, "Empty Queue"
    else
      value = @store[@front]
      @front = (@front + 1) % @max_size
      if @front == @back
        @front = @back = -1
      end
      return value
    end
  end
  
  def front
    raise NotImplementedError, "Not yet implemented"
  end
  
  def size
    raise NotImplementedError, "Not yet implemented"
  end
  
  def empty?
    return @front == -1
  end
  
  def to_s
    return @store.to_s
  end
end
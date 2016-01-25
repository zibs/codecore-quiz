# A stack is a "first in last out" data structure - it is analogous to the way we stack dishes; the first dish laid down will be the last one picked up. Method calls are placed on stack in the order they were called, and executed in a last call to first call order.

class Stack

  def initialize
    @stack = []
  end

  def add(task)
    stack_task = task
    @stack.push(stack_task)
  end

  def remove
    @stack.pop
  end

end

#A queue is a first in first out data structure. It is analogous to a shopping line queue; the first person there will also be the first person out. It is the inverse of FILO. We can see this

class Queue

  def initialize
    @stack = []
  end

  def add(task)
    stack_task = task
    @stack.unshift(stack_task)
  end

  def remove
    @stack.shift
  end

end

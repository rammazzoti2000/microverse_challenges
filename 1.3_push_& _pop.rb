# Start with your code from LinkedList challenge.
# Start with your code from last challenge.
class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class LinkedList
  #setup head and tail
  def initialize
      @head = nil
      @tail = nil
  end
  
  def add(number)
    node = Node.new(number)
    
    if @head.nil?
      @head = node
      @tail = node
    else
      @tail.next_node = node
      @tail = node
    end
  end
  
  def add_at(index, item)
    if @head.nil?             
      this_nod = Node.new(item)
      @head = this_nod
    end
    
    if index == 0 
      this_nod = Node.new(item, @head)
      @head = this_nod
    end
    
    if index > 0
      ind = index - 1
      current = @head
      before_current = @head
      
      ind.times do
        before_current = current.next_node
      end 
    
      index.times do
        current = current.next_node
      end 
      
      this_nod = Node.new(item) 
      after_current = before_current.next_node
      
      before_current.next_node = this_nod 
       
      this_nod.next_node = after_current
    end
  end
  
  def get(index)
    current = @head
    index.times do
      current = current.next_node
    end
    current.value
  end
  
  def remove(index)
    if @head.nil?
      puts "the storage is empty"
    end
    
    if index == 0
      current = @head 
      current.next=new_current 
      @head=new_current
    end
    
    if index > 0
      current = get_node(index) 
      before_current = get_node(index - 1) 
      after_current = current.next_node
      before_current.next_node = after_current
    end
 end
 
 private
 def get_node(index)
    current=@head
    index.times do
      current=current.next_node
    end
    current
  end
end

class Stack
  attr_accessor :first
  
  def push(number)
    # your code here
    @first = Node.new(number, @first)
  end
  
  def pop
    # your code here
    number = first.value
    @first = @first.next_node
    number
  end
end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.pop
# => 5

stack.push(2)
stack.push(7)
puts stack.pop
# => 7

puts stack.pop
# => 2

puts stack.pop
# => 3
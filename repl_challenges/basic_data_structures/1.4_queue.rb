# Start with your code from LinkedList challenge.

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
    if @head.nil?
      node = Node.new(number)
      @head = node
      @tail = node
    else
      node = Node.new(number)
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

    if index >0
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

class Queue
  def initialize
    @items = []
  end

  def add(element)
    @items.push(element)
  end

  def remove
    if @items.empty?
      return -1
    end
    @items.shift
  end


end

queue = Queue.new

queue.add(3)
queue.add(5)
puts queue.remove
# => 3

queue.add(2)
queue.add(7)
puts queue.remove
# => 5

puts queue.remove
# => 2

puts queue.remove
# => 7

puts queue.remove
# => -1

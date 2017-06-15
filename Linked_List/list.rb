require_relative 'node'

class Linked_List

  def initialize(head = nil)
    @head = head
  end

  def add_node(value)
    new_node = Node.new(value)

    if @head == nil
      @head = new_node
      return
    end

    current_node = @head

    while current_node.next_node != nil
      current_node = current_node.next_node
    end

    current_node.next_node = new_node
  end

  def print_list
    if @head == nil
      return "List is empty"
    end

    current_node = @head
    i = 1

    while current_node.next_node != nil
      puts "Node number: #{i}"
      puts "Node Value: #{current_node.value}"
      puts "--------------------"
      current_node = current_node.next_node
      i += 1
    end
    puts "Node number: #{i}"
    puts "Node Value: #{current_node.value}"
    puts "--------------------"
  end

  def remove_head
    @head = @head.next_node
  end

  def remove_tail
    previous = @head
    current = @head.next_node
    while current.next_node != nil
      previous = previous.next_node
      current = previous.next_node
    end
    previous.next_node = nil
  end

  def insert_at_index(value, index)
    prev = nil
    current_node = @head
    next_node = @head.next_node
    i = 0
    new_node = Node.new(value)
    while next_node != nil
      if index == 0
        @head = new_node
        @head.next_node = current_node
        return
      end
      if index == i
        prev.next_node = new_node
        new_node.next_node = current_node
      end
      prev = current_node
      current_node = current_node.next_node
      next_node = next_node.next_node
      i += 1
    end
    nil
  end

end

list = Linked_List.new
list.add_node(1)
list.add_node(2)
list.add_node(3)
list.add_node(4)
# print list.print_list
# list.remove_head
list.insert_at_index(100,1)
print list.print_list

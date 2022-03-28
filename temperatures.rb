class Item
  attr_accessor :value, :index

  def initialize(value, index)
    @value = value
    @index = index
  end
end

def find_temperatures(input)
  stack = []
  answer = ("_" * input.length).split("")
  answer[-1] = 0

  input.to_enum.with_index.reverse_each do |t, i|
    while !stack.empty? && stack.last.value <= t do
      stack.pop
    end

    unless stack.empty?
      answer[i] = stack.last.index - i
    end
    stack.push(Item.new(t, i))
  end

  answer
end

puts(find_temperatures([13, 12, 15, 11, 9, 12, 16]).join(" -> "))

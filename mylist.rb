require_relative 'myenumerable'

class MyList
  include MyEnumerable

  def initialize(list)
    @list = list
  end

  def each
    @list.size.times do |item|
      yield @list[item] if block_given?
    end
  end
end

list = MyList.new([1, 2, 3, 4])

puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })
puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })
puts(list.filter(&:even?))

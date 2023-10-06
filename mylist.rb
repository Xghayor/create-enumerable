require_relative 'myenumerable'

class MyList
  include MyEnumerable

  def initialize(list)
  @list = list
  end

  def each
    @list.each { |item| yield(item) }
  end
end

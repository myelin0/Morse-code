module MyEnumerable
  def all?(&block)
    compute = true
    each { |i| compute = false unless block.yield(i) }
    compute
  end

  def any?(&block)
    compute = false
    each { |i| compute = true if block.yield(i) }
    compute
  end

  def filter
    arr = []
    each { |n| arr.push(n) if yield n }
    arr
  end
end

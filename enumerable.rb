# rubocop:disable Metrics/PerceivedComplexity,Metrics/CyclomaticComplexity
module Enumerable
  def my_each(_array = nil)
    return to_enum unless block_given?

    Array(self).length.times do |i|
      yield(Array(self)[i])
    end
    self
  end

  def my_each_with_index(_array = nil)
    return to_enum unless block_given?

    Array(self).length.times do |index|
      yield(to_a[index], index)
    end
    self
  end

  def my_select
    return to_enum unless block_given?

    result = []
    my_each do |item|
      result.push(item) if yield(item)
    end
    puts result
  end

  def my_all?(obj = nil)
    return false if obj.nil? && !block_given?

    result = true

    if obj.nil?
      my_each { |i| return !result unless yield(i) }
    elsif obj.is_a? String
      my_each { |i| return !result unless i.match?(obj) }
    elsif obj.is_a? Integer
      my_each { |i| return !result unless i == obj }
    end
    result
  end

  def my_any?(obj = nil)
    return false if obj.nil? && !block_given?

    result = false
    if obj.nil?
      my_each { |i| return !result if yield(i) }
    elsif obj.is_a? String
      my_each { |i| return !result if obj.match?(i) }
    elsif obj.is_a? Integer
      my_each { |i| return !result if i == obj }
    end
    result
  end

  def my_none?(obj = nil)
    return false if obj.nil? && !block_given?

    result = true
    if obj.nil?
      my_each { |i| return !result if yield(i) }
    elsif obj.is_a?(String) && !is_a?(Range)
      my_each { |i| return !result if i.match?(obj) }
    elsif obj.is_a? Integer
      my_each { |i| return !result if i == obj }
    end
    result
  end

  def my_count(obj = nil)
    counter = 0
    if obj.nil? && !block_given?
      my_each { |_i| counter += 1 }
    elsif obj.nil? && block_given?
      my_each { |i| counter += 1 if yield(i) }
    elsif obj.is_a? Integer
      my_each { |i| counter += 1 if i == obj }
    elsif obj.is_a? String
      my_each { |i| counter += 1 if i.match?(obj) }
    end
    counter
  end

  def my_map(_array = nil)
    return to_enum unless block_given?

    new_array = []
    my_each do |i|
      new_array.push(yield(i))
    end
    new_array
  end

  def my_inject(*obj)
    raise('LocalJumpError: Block or argument missing!') if !block_given? && obj.nil?

    result = Array(self)[0]

    is_symbol = false
    if (obj[0].class == Symbol) || obj[0].nil?
      is_symbol = true
    elsif obj[0].is_a? Numeric
      result = obj[0]
    end

    Array(self).my_each_with_index do |item, index|
      next if is_symbol && index.zero?

      if block_given?
        result = yield(result, item)
      elsif obj[0].is_a? Numeric
        result = result.send(obj[1], item)
      elsif obj[0].class == Symbol
        result = result.send(obj[0], item)
      end
    end
    result
  end
end

def multiply_els(arr)
  arr.my_inject(:*)
end

# rubocop:enable Metrics/PerceivedComplexity,Metrics/CyclomaticComplexity

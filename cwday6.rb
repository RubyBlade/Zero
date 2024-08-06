def unique_in_order(iterable)
  iterable = iterable.is_a?(String) ? iterable.chars : iterable
  result = []
  previous = nil

  iterable.each do |element|
    result << element unless element == previous
    previous = element
  end

  result
end

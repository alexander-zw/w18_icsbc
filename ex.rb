def array_max(array)
  puts "[" + array.join(", ") + "]"
  if array.length == 1  # base case
    return array[0]
  else
    last = array.pop()
    rest = array_max(array - [last]) # recursive call - array is now shorter
    if last > rest
      return last
    else
      return rest
    end
  end
end

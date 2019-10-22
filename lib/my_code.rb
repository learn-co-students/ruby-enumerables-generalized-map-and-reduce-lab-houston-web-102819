# Your Code Here

def map(array)
  new = []
  index = 0
  while index < array.length
    new << yield(array[index])
    index += 1
  end
  new
end


def reduce(array, starting_point=nil)
  if starting_point
    sum = starting_point
    index = 0
  else
    sum = array[0]
    index = 1
  end
  while index < array.length do
    sum = yield(sum, array[index])
    index += 1
  end
  sum
end
  
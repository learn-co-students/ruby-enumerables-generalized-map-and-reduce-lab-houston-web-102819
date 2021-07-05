def map (array)
  new = [ ]
  counter = 0 
  while counter < array.size 
  new.push(yield(array[counter]))
  counter+=1
  end
  return new
end


def reduce (array , startpoint = nil)
  
  if startpoint
  counter=0 
  total = startpoint
else 
  counter = 1
  total = array[0]
end
  
  while counter < array.size 
  total =  yield(total, array[counter])
  counter+=1
  end
  
  return total
  
end

# some other try 

def reduce (array , startpoint = nil)
  
  
  
  
  counter=0 
  total = startpoint
  
  while counter < array.size 
  total =  yield(total, array[counter])
  counter+=1
  end
  
  return total
  
end



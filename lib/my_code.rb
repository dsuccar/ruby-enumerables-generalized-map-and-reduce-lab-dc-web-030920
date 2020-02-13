require 'pry'

def map(array)
  i=0
  answer = []
  while i < array.length do
    answer << yield(array[i])
    i +=1
  end
  answer
  end


def reduce(array, sn = nil)

  if sn
    sum = sn
    i = 0

  else
    sum = array[0]
    i=1
  end

while i < array.length
  sum = yield(sum, array[i])

  i+=1
end
sum
end

def bubble_sort(arr)
  swap = true
  while swap
    swap = false
    puts 'loop start'
    for i in 0...(arr.length - 1)
      print " i= #{i} arr[i]= #{arr[i]} arr[i+1]= #{arr[i + 1]}"
      if arr[i] > arr[i + 1]
        print ' swap = true '
        swap = true
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      else
        print ' swap = false '
      end
      print arr
      print "\n"
    end
  end
  puts
  print 'Sorted Array -> '
  arr
end

test = [1, 100, 45, 4, 7, 0, 6, 6]

puts bubble_sort(test).inspect

def bubble_sort_by(arr)
  swap = true
  while swap
    swap = false
    puts 'loop start'
    for i in 0...(arr.length - 1)
      print " i= #{i} arr[i]= #{arr[i]} arr[i+1]= #{arr[i + 1]}"
      if arr[i] > arr[i + 1]
        print ' swap = true '
        swap = true
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      else
        print ' swap = false '
      end
      print arr
      print "\n"
    end
  end
  puts
  print 'Sorted Array -> '
  arr
end

def test_block(x,y)
  yield
end

test_block(3,4) do |left, right|
  if left > right
    puts "+1"
  else
    puts "-1"
  end
end





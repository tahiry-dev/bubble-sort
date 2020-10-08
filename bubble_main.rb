$compare = 5

def bubble_sort(arr)
  puts 'Bubble Sort'
  swap = true
  while swap
    swap = false
    for i in 0...(arr.length - 1)
      if arr[i] > arr[i + 1]
        swap = true
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      else 
      end
    end
  end
  print 'Sorted Array -> '
  arr
end

test = [1, 100, 45, 4, 7, 0, 6, 6]
puts bubble_sort(test).inspect
def bubble_sort_by(arr)
  print "\n"
  puts 'Bubble Sort By'
  swap = true
  while swap
    swap = false
    for i in 0...(arr.length - 1)
      yield(arr[i], arr[i + 1])
      if $compare == 1
        swap = true
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      else
      end
    end
  end
  new_arr = arr
  puts "Sorted Array -> #{arr}"
  print "\n"
  new_arr
end

bubble_sort_by([1, 100, 45, 4, 7, 0, 6, 6]) do |left, right|
  $compare = 1 if left > right
  $compare = 0 if left == right
  $compare = -1 if left < right
end


test = [1, 100, 45, 4, 57, 0, 6, 6]

def bubble_sort(arr)
  puts 'Bubble Sort'
  swap = true
  while swap
    swap = false
    (arr.length - 1).times do |i|
      if arr[i] > arr[i + 1]
        swap = true
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      end
    end
  end

  arr
end

int_arr = bubble_sort(test)
print 'Sorted Array -> '
puts int_arr.inspect
print "\n\n"

def bubble_sort_by(arr)
  puts 'Bubble Sort By'
  swap = true
  while swap
    swap = false
    (arr.length - 1).times do |i|
      compare = yield(arr[i], arr[i + 1])
      if compare > 0
        swap = true
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      end
    end
  end
  arr
end

str_arr = bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end

print '2nd Sorted Array -> '
puts str_arr.inspect

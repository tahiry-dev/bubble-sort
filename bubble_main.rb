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

test = [1, 100, 8, 4, 5, 0, 6, 6]

sorted_arr = bubble_sort(test)

puts sorted_arr.inspect

def bubble_sort(arr)
    sorted_arr = []
    swap = true
    while swap
        puts "loop start"
        for i in 0...(arr.length-1)
            swap = false
            if arr[i] > arr[i+1]
            swap = true
                temp = arr[i]
                arr[i] = arr[i+1]
                arr[i+1] = temp
            end
            print arr
            print "\n"
        end
    end
    arr
end




test = [3,2,6,9]

test = [1,100,8,4,5,0,6,6]

test = [1,8,4,5,6,6]

print "Sorted Array"
puts bubble_sort(test)

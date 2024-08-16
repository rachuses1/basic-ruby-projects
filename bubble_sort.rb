def bubble_sort(array)
  check = 0
  index_end = array.length - 1

  while check < array.length
    array.each_index {|index| 
    
      if index < index_end
        if array[index] > array[index + 1]
          a = array[index]
          b = array[index + 1]
          array[index] = b
          array[index + 1] = a
          check = 0
        end
      else
        check += 1
      end
      
    }
  end
  puts array


end

bubble_sort([4,3,78,2,0,2,60,24])
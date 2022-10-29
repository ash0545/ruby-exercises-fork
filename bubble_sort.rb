def bubble_sort(array)
  n = array.length - 1
  swapped = true
  while swapped
    swapped = false
    for i in 1..n do
      if array[i] < array[i-1]
        array[i], array[i-1] = array[i-1], array[i]
        swapped = true
      end
    end
    n -= 1
  end
end

bubble_sort([3, 4, 7, 6, 4, 9, 10, 3])
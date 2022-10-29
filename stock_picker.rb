#Choose first number (A0)
#Store first difference (A1 - A0) = result
#Store second difference (A2 - A0)
#If A2 - A0 > result, result = A2 - A0
#Do till end, store in array
#Choose next number (A1)
#Repeat same steps except dont check difference in reverse (A0 - A1)

def stock_picker(stock_array)
  orig_stock = stock_array.map {|item| item}
  cycles = stock_array.length - 2
  max_prof = [0]
  for i in 0..cycles
    stock_array.each do |stock|
      difference = stock - stock_array[0]
      if max_prof[i] < difference
        max_prof.pop
        max_prof.push(difference)
      end
    end
    stock_array.shift
    max_prof.push(0)
  end
  p max_prof
  buy = max_prof.index(max_prof.max)
  sell = orig_stock.index(orig_stock[buy, orig_stock.length - 1].max)
  p [buy, sell, max_prof.max]
end

stock_picker([17,3,6,9,15,8,6,1,10])

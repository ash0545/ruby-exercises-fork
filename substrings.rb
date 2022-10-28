def substrings(string, valid_words)
  special_chars = ['!', ',', '.', '?', '@', '"', "'"]
  special_chars.each {|char| string.gsub!(char, '')}
  string_array = string.downcase.split(' ')
  result = string_array.reduce(Hash.new(0)) do |result, val|
    if valid_words.include?(val)
      result[val] += 1
      result
    else 
      result
    end
  end
  p result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
def substrings(word, array)
  #to count how many times the word has appeared in the array
  
  word_input = word.downcase
  hash = Hash.new
  array.each do |word|
    matches = word_input.scan(word).length
    hash[word] = matches unless matches == 0
    end
  
  puts hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)

# tr('^a-zA-Z0-9',' ')
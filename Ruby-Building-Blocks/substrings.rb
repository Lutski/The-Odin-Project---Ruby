def substrings(string, dictionary)
  array_from_string = string.downcase.split(' ')
  results_hash = Hash.new(0) # New hash with default value of 0

  array_from_string.each do |word|
    dictionary.each do |substring|
      if word[substring]
        results_hash[substring] += 1
      end
    end
  end

  results_hash
end

my_dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below below", my_dictionary)

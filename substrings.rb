def substrings(str, dict)
  str_array = str.downcase.split(" ")
  result = Hash.new
  for dict_item in dict
    count = 0
    for word in str_array
      if word.include? dict_item
        count += 1
      end
    end
    if count > 0
      result.store(dict_item, count)
    end
  end
  return result
end
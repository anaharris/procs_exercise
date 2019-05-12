def reverser(str, &prc)
  new_str = ""
  new_str << prc.call(str.reverse)
  new_str
end

def word_changer(sentence, &prc)
  result = []
  words = sentence.split(' ')
  words.each { |word| result << prc.call(word) }
  result.join(' ')
end

def greater_proc_value(num, prc_1, prc_2)
  result_1 = prc_1.call(num)
  result_2 = prc_2.call(num)
  if result_1 > result_2
    return result_1
  else
    return result_2
  end
end

def and_selector(arr, proc_1, proc_2)
  result = []
  arr.each do |el|
    result << el if proc_1.call(el) && proc_2.call(el)
  end
  result
end

def alternating_mapper(arr, proc_1, proc_2)
  result = []
  arr.each_with_index do |el, i|
    if i.even?
      result << proc_1.call(el)
    else
      result << proc_2.call(el)
    end
  end
  result
end

def get_most_common_letter(text)
    counter = Hash.new(0)
    #p counter
    text.chars.each do |char|
      counter[char] 
    p char
    p counter[char] += 1
    end
    counter.to_a.sort_by { |k, v| v }[0][0]
    p counter.to_a.sort_by { |k, v| v }[0][0]
    #p counter.to_a.sort_by { |k, v| v }[0][0]
  end

  p get_most_common_letter("hhhttyyarsdsfffhhhhhhhf")
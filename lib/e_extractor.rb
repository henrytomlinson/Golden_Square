def e_extractor(str)
    str.include? "e"
    letters = str.chars
    e_letters = letters.select { |l| l == "e" }.join
    non_e_letters = letters.select { |l| l != "e" }.join
    return e_letters + non_e_letters
end

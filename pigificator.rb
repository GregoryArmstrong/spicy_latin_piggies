require 'pry'

def vowels
  %w(a e i o u)
end

def vowel?(letter)
  vowels.include?(letter)
end

def piglatinize(string)
  if vowel?(string[0])
    string + "-way"
  else
    piggification(string)
  end
end

def piggification(string)
  consonants = []
  string.chars.each_with_index do |letter, index|
    if vowel?(letter)
      consonants = string.slice!(0..(index - 1))
      break
    end
  end
  string + "-" + consonants + "ay"
end

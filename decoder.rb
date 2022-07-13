def decode_letter (input)
  case input
  when ".-"
    output = "A"
  when "-..."
    output = "B"
  when "-.-."
    output = "C"
  when "-.."
    output = "D"
  when "."
    output = "E"
  when "..-."
    output = "F"
  when "--."
    output = "G"
  when "...."
    output = "H"    
  when ".."
    output = "I"
  when ".---"
    output = "J"
  when "-.-"
    output = "K"
  when ".-.."
    output = "L"
  when "--"
    output = "M"
  when "-."
    output = "N"
  when "---"
    output = "O"
  when ".--."
    output = "P"
  when "--.-"
    output = "Q"
  when ".-."
    output = "R"
  when "..."
    output = "S"
  when "-"
    output = "T"
  when "..-"
    output = "U"
  when "...-"
    output = "V"
  when ".--"
    output = "W"
  when "-..-"
    output = "X"
  when "-.--"
    output = "Y"
  when "--.."
    output = "Z"
  else
    output = ""
  end
  return output
end

def decode_word (word)
  output = ""
  array = word.split(" ")
  array.each {
    |code| output += decode_letter (code)
  }
  return output
end

def decode_message (message)
  output = ""
  array = message.split('   ')
  array.each_with_index do |word, index|
    output += decode_word (word)
    if index != (array.length - 1) 
      output += " "
    end
  end
  return output
end
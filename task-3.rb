# Create a method to decode the entire message in Morse code,
# takes a string parameter, and return the string representation.
# Every word will be separated by 3 spaces

$morse_code_hash = {
  ".-" => "A",
  "-..." => "B",
  "-.-." => "C",
  "-.." => "D",
  "." => "E",
  "..-." => "F",
  "--." => "G",
  "...." => "H",
  ".." => "I",
  ".---" => "J",
  "-.-" => "K",
  ".-.." => "L",
  "--" => "M",
  "-." => "N",
  "---" => "O",
  ".--." => "P",
  "--.-" => "Q",
  ".-." => "R",
  "..." => "S",
  "-" => "T",
  "..-" => "U",
  "...-" => "V",
  ".--" => "W",
  "-..-" => "X",
  "-.--" => "Y",
  "--.." => "Z"
}

def decode_words(words)
  decoded_word = []

  words_array = words.split("   ")
  words_array.each do |each_word|
    new_each_word = each_word.split
    new_each_word.each do |single_word|
      value = $morse_code_hash[single_word]
      decoded_word << value if value
    end
    decoded_word << " "
  end
  puts decoded_word.join
end

decode_words(" .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
# Output = A BOX FULL OF RUBIES

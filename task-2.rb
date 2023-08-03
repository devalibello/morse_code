# Create a method to decode an entire word in Morse code,
# takes a string parameter, and return the string representation.
# Every character in a word will be separated by a single space
# (e.g. decode_word("-- -.--") returns "MY").

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

  $decoded_word = []

  def decode_word (word)
    words_array = word.split
    words_array.each do |letter|
        $morse_code_hash.each do |key, value|
            if letter == key
                $decoded_word << value
            end
        end
    end
    puts $decoded_word.join
  end

  decode_word("-- -.--") #Output = MY
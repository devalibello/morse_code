# Create a method to decode a Morse code character,
# takes a string parameter, and return the corresponding
# character in uppercase (e.g. decode_char(".-") returns "A").

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

def decode(letter)
  $morse_code_hash.each do |key, value|
    if letter == key
      puts value
    end
  end
end

decode("...") # The code should return S.

class Translate

  attr_accessor :array

  def initialize
    @array = nil
  end

  def from_file(file_name)
    File.open(file_name).each do |line|
      eng_to_morse(line)
      end
  end

  def eng_to_morse(string)
    @array = string.downcase.split(%r{s*})
    morse = @array.map do |letter|
      if letter == "a"
        letter = ".-"
      elsif letter == "b"
        letter = "-..."
      elsif letter == "c"
        letter = "-.-."
      elsif letter == "d"
        letter = "-.."
      elsif letter == "e"
        letter = "."
      elsif letter == "f"
        letter = "..-."
      elsif letter == "g"
        letter = "--."
      elsif letter == "h"
        letter = "...."
      elsif letter == "i"
        letter = ".."
      elsif letter == "j"
        letter = ".---"
      elsif letter == "k"
        letter = "-.-"
      elsif letter == "l"
        letter = ".-.."
      elsif letter == "m"
        letter = "--"
      elsif letter == "n"
        letter = "-."
      elsif letter == "o"
        letter = "---"
      elsif letter == "p"
        letter = ".--."
      elsif letter == "q"
        letter = "--.-"
      elsif letter == "r"
        letter = ".-."
      elsif letter == "s"
        letter = "..."
      elsif letter == "t"
        letter = "-"
      elsif letter == "u"
        letter = "..-"
      elsif letter == "v"
        letter = "...-"
      elsif letter == "w"
        letter = ".--"
      elsif letter == "x"
        letter = "-..-"
      elsif letter == "y"
        letter = "-.--"
      elsif letter == "z"
        letter = "--.."
      elsif letter == "0"
        letter = "-----"
      elsif letter == "1"
        letter = ".----"
      elsif letter == "2"
        letter = "..---"
      elsif letter == "3"
        letter = "...--"
      elsif letter == "4"
        letter = "....-"
      elsif letter == "5"
        letter = "....."
      elsif letter == "6"
        letter = "-...."
      elsif letter == "7"
        letter = "--..."
      elsif letter == "8"
        letter = "---.."
      elsif letter == "9"
        letter = "----."
      elsif letter == " "
        letter
      else
        letter = "error"
      end
    end
    morse.join
  end

end

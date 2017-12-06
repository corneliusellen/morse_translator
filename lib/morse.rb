class Translate

  attr_accessor :string
                :array

  def initialize
    @array = nil
  end

  def eng_to_morse(string)
    @array = string.split(%r{\s*})
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
      else
        letter = "0"
      end
    end
    morse.join
  end

end

translator = Translate.new
puts translator.eng_to_morse("hello world")

require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse'

class MorseTest < Minitest::Test

  def test_it_works
    translator = Translate.new
    assert_instance_of Translate, translator
  end

  def test_eng_to_morse
    translator = Translate.new
    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("hello world")
  end

  def test_eng_to_morse_case_insensitive_with_numbers
    translator = Translate.new
    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("Hello World")
  end

  def test_eng_to_morse_extremes
    translator = Translate.new
    assert_equal "......-...-..--- .-----.-..-..-..error", translator.eng_to_morse("Hello World!")
  end

  def test_from_file
    translator = Translate.new
    assert_equal ".. .--- ..-. .- ..-....-...", translator.from_file("input.txt")

  end

end

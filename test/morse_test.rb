require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse'

class MorseTest < Minitest::Test

  def test_it_works
    translator = Translate.new
    assert_instance_of Translate, translator
  end

  def eng_to_morse_test
    translator = Translate.new
    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("hello world")
  end

end

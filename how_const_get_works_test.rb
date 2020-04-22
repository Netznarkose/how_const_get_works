require 'minitest/autorun'
require 'pry-byebug'

Dog = Struct.new(:name, :hight)
Pony = Struct.new(:name, :hight)

class DynamicClassInitialisationTest < Minitest::Test
  def dynamic_class_initializer(animal)
    Object.const_get(animal)
  end

  def test_dynamic_class_initialisation
    assert_equal(dynamic_class_initializer('Pony'), Pony)
  end
end

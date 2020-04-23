require 'minitest/autorun'

Dog = Struct.new(:name, :height)
Pony = Struct.new(:name, :height)

class DynamicClassInitialisationTest < Minitest::Test
  def dynamic_class_initializer(animal)
    Object.const_get(animal)
  end

  def test_dynamic_class_initialisation
    assert_equal(dynamic_class_initializer('Pony'), Pony)
  end
end

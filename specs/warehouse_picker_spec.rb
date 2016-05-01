require "minitest/autorun"
require_relative "../warehouse_picker_functions.rb"

class TestWarehouse < Minitest::Test

  def test_item_at_bay
    item = item_at_bay("b5")
    assert_equal("nail filer", item)

end

  def test_location_at_bay
    location = location_at_bay("nail filer")
    assert_equal("b5", location)
  end

  def test_multiple_items
   items = multiple_items(["b5", "b6", "b10"])
   distance = multiple_items(["b5", "b6", "b10"])
   assert_equal(["nail filer","tooth paste", "cookie jar"], items[0])
   assert_equal(5, distance[1])
end

def test_multiple_bays
  bays = multiple_bays(["shoe lace", "rusty nail", "leg warmers"], items)
  assert_equal(["c1", "c9", "c10", location])
end

end 




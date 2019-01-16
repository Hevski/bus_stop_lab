require("minitest/autorun")
require("minitest/rg")

require_relative("../Bus")
require_relative("../Person")
require_relative("../BusStop")

class TestBus < MiniTest::Test

def setup
  @person = Person.new("Eric", 26)
  @bus = Bus.new(15, "Ponsonby")
end
# The Bus should have a route number (e.g. 22) and a destination (e.g. "Ocean Terminal").
# The Bus should have a drive method that returns a string (e.g. "Brum brum").

  def test_drive_method_string
    assert_equal("Brum brum", @bus.drive())
  end

  def test_number_of_passengers
    assert_equal(0, @bus.passenger_count())
  end

  def test_add_passenger
    @bus.add_passenger(@person)
    assert_equal(1, @bus.passenger_count())
  end

  def test_remove_passenger
    @bus.remove_passenger(@person)
    assert_equal(0, @bus.passenger_count())
  end

  def test_empty_bus
    assert_equal([], @bus.empty_bus())
    assert_equal(0, @bus.passenger_count)
  end

  def test_pick_up_all_passengers
    
  end

end

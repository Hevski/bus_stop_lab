require("minitest/autorun")
require("minitest/rg")

require_relative("../Bus")
require_relative("../BusStop")
require_relative("../Person")

class TestBusStop < MiniTest::Test

  def setup
    @bus_stop = BusStop.new("Wall")
    @person1 = Person.new("Harvey", 38)
    @person2 = Person.new("Jennifer", 33)
  end

  def test_add_person_to_queue
    result = @bus_stop.add_person_to_queue(@person1)
    assert_equal([@person1], result)
  end

  


end

  # Add an attribute to the BusStop called 'queue'. This should be an empty array that will get filled with instances of the Person class.

  # Add a method that adds a person to the queue.

  # Now imagine that our bus is travelling along the route. For now we will imagine that there is only one bus that goes on this route, so every passenger waiting at each stop wants to get on the bus.

  # Try writing a method that the bus would call, to collect all of the passengers from a stop. This might look like bus.pick_up_from_stop(stop1). This should take all of the passengers waiting in line at the stop, and put them inside of the bus. So the stop will now have nobody in the queue, and the number of people on the bus will increase by however many people the stop had at it.

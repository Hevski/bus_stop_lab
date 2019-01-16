class Bus

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  # Add a method to the Bus class which returns how many passengers are on the bus.
  def passenger_count()
    @passengers.length()
  end

  # Add a method to the Bus class which takes in a Person and adds it to the array of passengers. The method could look something like bus.pick_up(passenger1)

  def add_passenger(passenger)
    @passengers << passenger
  end
  # Add a method that drops off a passenger and removes them from the array. This could look like bus.drop_off(passenger2)
  def remove_passenger(passenger)
    @passengers.delete(passenger)
  end
  # Add an 'empty' method to remove all of the passengers - this might be used when the bus reaches its destination, or if the bus breaks down. It should remove all of the passengers from the array.
  def empty_bus()
    @passengers.clear
  end

  def drive()
    return "Brum brum"
  end



end

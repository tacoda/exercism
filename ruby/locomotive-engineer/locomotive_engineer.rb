class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagons)
    wagons
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    locomotive_index = each_wagons_id.find_index(1)
    wagons_out_of_order = each_wagons_id[...locomotive_index]
    start_of_wagons = each_wagons_id[locomotive_index + 1..]
    [1, *missing_wagons, *start_of_wagons, *wagons_out_of_order]
  end

  def self.add_missing_stops(terminuses, **stops)
    { **terminuses, stops: stops.values }
  end

  def self.extend_route_information(route, more_route_information)
    { **route, **more_route_information }
  end
end

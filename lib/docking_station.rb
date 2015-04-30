require_relative 'bike'

class DockingStation
  def release_bike
    raise 'No bikes here!' unless @bike != nil
    @bike
  end

  def dock bike
    @bike = bike
  end
end
require_relative 'bike'

class DockingStation
  def release_bike
    raise 'No bikes here!' unless @bike
    @bike
  end

  def dock bike

    #byebug
    raise 'Docking station full' if @bike
      @bike = bike
    end
end
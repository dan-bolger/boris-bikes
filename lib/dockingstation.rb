class DockingStation

	def release_bike
    fail 'no bikes available' unless @bike
		@bike
	end

  def dock bike
    @bike = bike
  end
end
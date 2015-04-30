feature "Docking station releases working bikes" do
	scenario "Bike is released to user from docking station" do
		docking_station = DockingStation.new
    docking_station.dock Bike.new
		bike = docking_station.release_bike
		expect(bike).to be_working
	end

  scenario 'Station does not release bike when none available' do
    docking_station = DockingStation.new
    expect { docking_station.release_bike }.to raise_error 'no bikes available'
  end
end


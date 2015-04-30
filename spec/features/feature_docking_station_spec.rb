describe 'Should be able to access docking station' do
  scenario 'Get working bike from docking station' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike).to be_working
  end
end
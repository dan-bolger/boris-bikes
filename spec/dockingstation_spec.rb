require 'dockingstation'

describe DockingStation  do

  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    subject.dock Bike.new
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it {is_expected.to respond_to(:dock).with(1).argument}

  describe 'release_bike' do
  it 'Raises error when no bikes are available' do
    expect { subject.release_bike}.to raise_error 'no bikes available'
    end
  end

end
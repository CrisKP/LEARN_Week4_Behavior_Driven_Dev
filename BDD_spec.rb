require 'rspec'
require_relative 'BDD'

describe "Vehicle" do
    it "can be a vehicle" do
        expect{Vehicle.new}.to_not raise_error
    end

    it "can be a car" do
        expect{Car.new}.not_to raise_error
    end

    it "has four wheels" do
        a_car = Car.new
        expect(a_car.wheels).to eq(4)
    end

    it "can make horn beep" do
        a_car = Car.new
        expect(a_car.horn).to eq("BEEP!")
    end

    it "makes a Toyota car" do
        expect{Toyota.new}.not_to raise_error
    end

    it "can make a Toyota's horn whoop" do
        my_toyota = Toyota.new
        expect(my_toyota.horn).to eq("whoop")
    end

    it "makes a Tata car" do
        expect{Tata.new}.not_to raise_error
    end

    it "can make a Tata's horn beep" do
        my_tata = Tata.new
        expect(my_tata.horn).to eq("beep")
    end

    it "makes a Tesla car" do
        expect{Tesla.new}.not_to raise_error
    end

    it "can make a tesla horn do some bee boop stuffs" do
        my_tesla = Tesla.new
        expect(my_tesla.horn).to eq("Beep-bee-bee-boop-bee-doo-weep")
    end

    it "can tell which model year of vehicle" do
        my_vehicle = Vehicle.new
        expect(my_vehicle.model_year).to eq(2000)
    end

    it "can determine if lights are on or off" do
        my_vehicle = Vehicle.new
        expect(my_vehicle.lights).to eq (false)
    end

    it "can use the turn signals" do
        my_vehicle = Vehicle.new
        expect(my_vehicle.turn_signals("left")).to eq("left")
    end

    it "can determine the speed" do
        my_vehicle = Vehicle.new
        expect(my_vehicle.speed).to be_a(Numeric)
        expect(my_vehicle.speed).to eq(0)
    end

    it "can speed up the Tesla by 10km/h" do
        my_tesla = Tesla.new
        my_tesla.accelerate
        expect(my_tesla.speed).to eq(10)
    end

    it "can brake the Tesla by 7km/h" do
        my_tesla = Tesla.new
        my_tesla.accelerate
        my_tesla.brake
        expect(my_tesla.speed).to eq(3)
    end

    it "can speed up the tata by 2km/h" do
        my_tata = Tata.new
        my_tata.accelerate
        expect(my_tata.speed).to eq(2)
    end

    it "can slow down the tata by 2km/h" do
        my_tata = Tata.new
        my_tata.accelerate
        my_tata.brake
        expect(my_tata.speed).to eq(0.75)
    end

    it "can speed up the Toyota by 7km/h" do
        my_toyota = Toyota.new
        my_toyota.accelerate
        expect(my_toyota.speed).to eq(7)
    end

    it "can slow down the Toyota by 5km/h" do
        my_toyota = Toyota.new
        my_toyota.accelerate
        my_toyota.brake
        expect(my_toyota.speed).to eq(2)
    end

    it "will show us all the info of our car" do
        my_toyota = Toyota.new
        # expect(my_toyota.show_attributes).to eq("#{my_toyota.to_s } 2000 false false BEEP! 0") this DON'T WORK!
        my_toyota.turn_signals("right")
        expect(my_toyota.show_attributes).to eq([my_toyota.to_s, @model_year=2000, @lights=false, @turn_signals="right", @horn="BEEP!", @speed=0])
    end
end

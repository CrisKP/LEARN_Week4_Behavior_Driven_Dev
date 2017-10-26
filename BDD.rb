class Vehicle
    attr_accessor :horn, :model_year, :lights, :speed
    def initialize(speed=0, model_year=2000, lights=false, turn_signals=false, horn="BEEP!")
        @model_year = model_year
        @lights = lights
        @turn_signals = turn_signals
        @horn = horn
        @speed = speed
    end

    def turn_signals(x)
        p "you're turning #{x}"
        @turn_signals = x
    end

    def speed
        @speed
    end
end

class Car < Vehicle
    attr_accessor :wheels
    def wheels(wheels=4)
        @wheels = wheels
    end
end

class Toyota < Car
    def horn
        @horn = "whoop"
    end

    def accelerate
        @speed += 7
    end

    def brake
        @speed -= 5
    end

    def show_attributes
        [self.to_s, @model_year, @lights, @turn_signals, @horn, @speed]
    end
end

class Tata < Car
    def horn
        @horn = "beep"
    end
    def accelerate
        @speed += 2
    end

    def brake
        @speed -= 1.25
    end
end

class Tesla < Car
    def horn
        @horn = "Beep-bee-bee-boop-bee-doo-weep"
    end

    def accelerate
        @speed += 10
    end

    def brake
        @speed -= 7
    end
end

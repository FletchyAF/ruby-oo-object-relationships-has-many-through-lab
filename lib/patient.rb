class Patient

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        new_appoint = Appointment.new(date, self, doctor)
        new_appoint.patient = self
        return new_appoint
    end

    def appointments
        Appointment.all.select {|appoint| appoint.patient == self}
    end

    def doctors
        appointments.collect {|element| element.doctor}
    end
end

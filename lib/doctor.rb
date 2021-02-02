class Doctor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, patient)
        new_appoint = Appointment.new(date, patient, self)
        return new_appoint
    end

    def appointments
        Appointment.all.select {|appoint| appoint.doctor == self}
    end

    def patients
        return appointments.collect {|element| element.patient}
    end
end

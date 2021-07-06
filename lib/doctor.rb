class Doctor
  attr_accessor :name, :appointment
  @@all = []
  def self.all
    @@all
  end
  def initialize(name)
    @name = name
    self.class.all << self
  end

def appointments
  Appointment.all.select {|appointment| appointment.doctor == self}
end

def patients
  self.appointments.map {|appointment| appointment.patient}
end

def new_appointment(date, patient)
  Appointment.new(date, patient, self)
end



end

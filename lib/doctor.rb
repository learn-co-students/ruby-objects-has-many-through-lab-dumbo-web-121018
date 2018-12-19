class Doctor
  attr_reader :name, :patient, :appointment

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end


  def self.all
    @@all
  end


def new_appointment(patient, date)
new_a = Appointment.new(date, patient, self)
new_a
end

def appointments
  Appointment.all.select do |appointment|
    appointment.doctor == self
  end
end

def patients
  Appointment.all.map do |appointment|
    appointment.patient
  end
end

end

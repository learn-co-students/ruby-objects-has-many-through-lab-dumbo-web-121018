class Patient
  attr_accessor :name, :appointment, :doctor
  @@all = []
  def self.all
    @@all
  end
  def initialize(name)
    @name = name
    self.class.all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end

  def appointments
    Appointment.all.select { |appointment| appointment.patient == self}
  end

  def doctors
      self.appointments.map {|appointment| appointment.doctor}
  end
end

class Patient
  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(self, date, doctor)
  end

  def appointments
    Appointment.all.select do |appointment|
      self == appointment.patient
    end
  end

  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end

end

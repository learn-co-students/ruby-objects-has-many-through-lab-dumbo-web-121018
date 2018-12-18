class Patient
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor,date)
    Appointment.new(date,self,doctor)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    doctors = []
    appointments.each do |appointment|
      doctors << appointment.doctor
    end
    return doctors.uniq
  end

  def self.all
    @@all
  end

end

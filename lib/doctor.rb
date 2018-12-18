class Doctor
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient,date)
    Appointment.new(date,patient,self)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    all_patients = []

    appointments.each do |appointment|
      all_patients << appointment.patient
    end
    return all_patients.uniq
  end

  def self.all
    @@all
  end
end

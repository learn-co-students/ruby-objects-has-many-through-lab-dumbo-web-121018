class Appointment
  @@all = []

  attr_accessor :date
  attr_reader :patient, :doctor

  def initialize(date,patient,doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def patients
    patients = []

    Appointment.all.each do |appointment|
      patients << appointment.patient
    end

    return patients
  end

  def self.all
    @@all
  end

end

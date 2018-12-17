require "pry"

class Doctor

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, date, self)
    # binding.pry
  end

  def appointments
    Appointment.all.select do |appointment|
      self == appointment.doctor
    end
  end

  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end

end

require_relative "lib/artist"
require_relative "lib/song"
require_relative "lib/genre"
require_relative "lib/doctor"
require_relative "lib/patient"
require_relative "lib/appointment"

require 'pry'

#---------
artist1 = Artist.new("Wu Tang Clan")
artist2 = Artist.new("Tupac")
artist3 = Artist.new("Kavinksy")

song1 = Song.new("C.R.E.A.M","Wu Tang Clan","rap")
song2 = Song.new("Dear Mama","Tupac","rap")
song3 = Song.new("Nightcall","Kavinksy","electronic")

genre1= Genre.new("rap")
#---------
patient1 = Patient.new("Bob")
# patient2 = Patient.new("Danny")
# patient3 = Patient.new("Michelle")

doctor1 = Doctor.new("Dr. Docker")
# doctor2 = Doctor.new("Dr. Kelly")
# doctor3 = Doctor.new("Dr. Simpson")

appointment1 = Appointment.new("Dec 23","Bob","Dr. Docker")
# appointment2 = Appointment.new("May 1","Danny","Dr. Kelly")
# appointment3 = Appointment.new("Sept 17","Michelle","Dr. Simpson")


binding.pry
puts "done"

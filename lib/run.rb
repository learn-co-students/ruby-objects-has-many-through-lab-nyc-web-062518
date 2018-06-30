require_relative "artist"
require_relative "genre"
require_relative "song"

# jay_z = Artist.new("Jay-Z")
# p jay_z
# rap = Genre.new("rap")
# p rap
# ninety_nine_problems = jay_z.new_song("Ninety Nine Problems", rap)
# p ninety_nine_problems

# jay_z = Artist.new("Jay-Z")
# p jay_z
# kendrick = Artist.new("Kendrick Lamar")
# p kendrick
#
# rap = Genre.new("rap")
# p rap
# #--------------------------------------
# ninenty_nine_problems = Song.new("99 Problems", jay_z, rap)
# p ninenty_nine_problems
#
# humble = Song.new("HUMBLE", kendrick, rap)
# p humble
#
# p rap.artists
# p rap.new_song


# expect(rap.artists).to include(jay_z)
# expect(rap.artists).to include(kendrick)

#it "has many songs" do
  # jay_z = Artist.new("Jay-Z")
  # p jay_z
  #
  # rap = Genre.new("rap")
  # p rap
  #
  # Song.new("99 Problems", jay_z, rap)
  #
  # shrimp = Song.new("Big Shrimpin", jay_z, rap)
  # p shrimp
  #
  # p rap.songs
#  expect(rap.songs).to include(shrimp)
#end

require_relative "doctor"
require_relative "patient"
require_relative "appointment"

#it "given a doctor and date, creates a new appointment belonging to that patient" do
  doctor_who = Doctor.new("The Doctor")
  hevydevy = Patient.new("Devin Townsend")
  appointment = hevydevy.new_appointment(doctor_who, "Friday, January 32nd")

  hevydevy.appointments
  appointment.patient
  
#  expect(hevydevy.appointments).to include(appointment)
#  expect(appointment.patient).to eq(hevydevy)
#end

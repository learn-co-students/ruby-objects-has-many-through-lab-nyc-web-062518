require_relative 'doctor.rb'
require_relative 'patient.rb'
require_relative 'appointment.rb'
require 'pry'

doctor_who = Doctor.new("The Doctor")
hevydevy = Patient.new("Devin Townsend")

new_appt = doctor_who.new_appointment(hevydevy, "Friday, January 32nd")



binding.pry

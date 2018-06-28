require "pry"

class Appointment
@@all = []

attr_reader :occurrence, :patient, :doctor

def initialize (occurrence, patient, doctor)
  @occurrence = occurrence
  @patient = patient
  @doctor = doctor
  @@all << self
  #binding.pry
end

def self.all
  @@all
end





end

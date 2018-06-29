class Appointment
  attr_reader :occurrence, :patient, :doctor
  @@all = []

  def initialize (occurrence, patient, doctor)
    @occurrence = occurrence
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end
end

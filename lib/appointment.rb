class Appointment
  @@all = []
  attr_accessor :date, :patient, :doctor

  def initialize(patient, doctor, date) #patient object, doctor object, string date
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all #lists each appointment in the class variable
    @@all
  end
end

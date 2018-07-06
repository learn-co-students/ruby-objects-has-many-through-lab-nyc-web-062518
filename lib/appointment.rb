class Appointment
  attr_accessor :patient, :doctor, :date
  @@all = []
  def initialize(doctor, patient, date)
    @doctor = doctor
    @date = date
    @patient = patient
    @@all << self
  end

  def self.all
    @@all
  end


end

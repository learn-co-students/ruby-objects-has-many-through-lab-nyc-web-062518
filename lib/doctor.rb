class Doctor
  @@all = []
  attr_accessor :name, :patient, :doctor

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date) #patient object, string date
    #creates a new appointment. That appointment should know that it belongs to the doctor
    newAppointment = Appointment.new(patient, self, date)
    newAppointment.doctor = self
    newAppointment
  end

  def appointments #iterates through all appointments and finds those belonging to this doctor.
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients #iterates over that doctor's appointments and collects the patient that belongs to each appointment.
    doctorsAppointments = Appointment.all.select do |appointment|
      appointment.doctor == self
    end

    doctorsAppointments.collect do |appointment|
      appointment.patient
    end

  end

  def self.all #lists each artist in the class variable
    @@all
  end

end

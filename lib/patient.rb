class Patient
  @@all = []
  attr_accessor :name, :doctor, :patient

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date) #object doctor, string date
    #creates a new appointment. The appointment should know that it belongs to the patient.
    newAppointment = Appointment.new(self, doctor, date)
    newAppointment.patient = self
    newAppointment
  end

  def appointments #iterates through the appointments array and returns appointments that belong to the patient.
    Appointment.all.select do |appointment|
      appointment.patient = self
    end
  end

  def doctors
    #iterates over that patient's appointments and collects the doctor that belongs to each appointment.
    patientsAppointments = Appointment.all.select do |appointment|
      appointment.patient == self
    end

    patientsAppointments.collect do |appointment|
      appointment.doctor
    end
  end

  def self.all #lists each artist in the class variable. typo?
    @@all
  end
end

require "pry"
class Patient

@@all = []

attr_reader :name

def initialize(name)
  @name = name
  @@all << self
end

def new_appointment(doctor, date)
  appointment = Appointment.new(date, self, doctor)
      #binding.pry
end

def appointments
  Appointment.all.select do |appointment|
    appointment.patient == self
  end
end

def doctors
  appointments.map do |appointment|
    appointment.doctor
  end
end


end

class Doctor

	attr_accessor :name, :patient, :date

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end


	def self.all
		@@all
	end


	def new_appointment(date, patient)
		Appointment.new(patient, date, self)

		# * The `Doctor` class needs an 
		# instance method, `#new_appointment`, 
		# that takes in a date and an instance 
		# of the `Patient` class and creates a 
		# new appointment. That appointment 
		# should know that it belongs to the 
		# doctor
		
	end

	def appointments
		Appointment.all.select do |x|
			x.doctor == self
		end
	end


		# * The `Doctor` class needs an 
		# instance method, `#appointments`, 
		# that iterates through all 
		# appointments and finds those 
		# belonging to this doctor.

	def patients
    	appointments.map do |appt|
      		appt.patient
      	end
	end

end
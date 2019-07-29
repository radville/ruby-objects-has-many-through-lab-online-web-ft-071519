class Doctor
  
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, doctor)
  end
  
  def appointments
    Appointments.all.select { |appt| appt.doctor == self }
  end
  
  def patients
    self.appointments.map { |appt| appt.patient }
  end
  
end
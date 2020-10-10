class Patient

  attr_reader :name

  @@all = [] # hold all instances of Patient

  def initialize(name)
    @name = name
    Patient.all << self # on init, add instance to list of all Patient instances
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|appt| appt.patient == self}
  end

  def doctors
   return appointments.map {|appt| appt.doctor}.uniq
  end
  
  def self.all
    return @@all
  end

end

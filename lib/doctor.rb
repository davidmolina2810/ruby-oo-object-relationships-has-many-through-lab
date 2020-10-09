require 'pry'
class Doctor

  attr_accessor :name

  @@all = [] # hold all doctors

  def initialize(name)
    @name = name 
    @@all << self # add doctor to all doctors on init
  end

  def new(name)
    return Doctor.new(name)
  end
  
  def appointments
    return Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def new_appointment(date, patient)
    return Appointment.new(date, patient, self)
  end

  def patients
    binding.pry
    return appointments.map {|appointment| appointment.patient}
  end

  def self.all
    return @@all
  end

end
  
  
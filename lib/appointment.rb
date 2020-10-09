class Appointment

  attr_accessor :date, :patient, :doctor

  @@all = [] # hold all appointments

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self # add appointment to all appointments on init
  end

  def self.all
    return @@all
  end

end
class Appointment
  attr_reader :name
  attr_accessor :patient, :doctor
  
  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self 
  end

  def self.all
    @@all
  end

  # def patient
    
  # end



end
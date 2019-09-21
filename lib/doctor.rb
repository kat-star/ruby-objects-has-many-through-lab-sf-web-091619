class Doctor
  attr_reader :name
  attr_accessor :patient, :appointment

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |scheduling| 
      scheduling.doctor == self
    end
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def patients
    self.appointments.map do |scheduling|
      scheduling.patient 
    end
  end

end
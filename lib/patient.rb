class Patient
  attr_reader :name
  attr_accessor :doctor, :appointment

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def self.all
    @@all
  end

  def doctors 
    self.appointments.map do |appointment|
      appointment.doctor
    end
  end

  

end
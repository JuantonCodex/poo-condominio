require_relative '../models/Habitacion/Habitacion.rb'

class HabitacionFactory
  def self.create(*argumentos)
    Habitacion.new(argumentos[0], argumentos[1], argumentos[2], argumentos[3])
  end
end

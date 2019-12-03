require_relative '../models/Habitacion/Habitacion.rb'

class HabitacionRepository
  attr_accessor :arregloHabitaciones
  def initialize()
    @arregloHabitaciones = []
  end

  # Devuelve la lista de habitaciones registradas
  def obtenerHabitaciones()
    return arregloHabitaciones
  end

  def registrarHabitacion(habitacion)
    arregloHabitaciones.push(habitacion)
    return 'Habitación registrada'
  end

end
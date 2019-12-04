require_relative '../models/Habitacion/Habitacion.rb'

class HabitacionRepository

  attr_accessor :habitaciones
  def initialize()
    @habitaciones = []
  end

  def cargarHabitaciones()

    habitacion1 = Habitacion.new(1,'E','1','101')
    habitacion2 = Habitacion.new(2,'A','1','102')
    habitacion3 = Habitacion.new(3,'B','2','201')
    habitacion4 = Habitacion.new(4,'C','2','202')

    agregarHabitacion(habitacion1)
    agregarHabitacion(habitacion2)
    agregarHabitacion(habitacion3)
    agregarHabitacion(habitacion4)

    return habitaciones

  end

  def agregarHabitacion(habitacion)
    habitaciones.push(habitacion)
  end

end
require_relative './HabitacionFactory'
require_relative './ServicioFactory'


# Clase Factory principal
class Factory
  def self.dameObjeto(tipo, *argumentos)
    case tipo
    when "habitacion"
      return HabitacionFactory.create(argumentos[0], argumentos[1], argumentos[2], argumentos[3])  
    when "servicio"
      return HabitacionFactory.create(argumentos[0], argumentos[1])
    end
  end
end
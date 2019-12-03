require_relative './HabitacionFactory'

# Clase Factory principal
class Factory
  def self.dameObjeto(tipo, *argumentos)
    case tipo
    when "habitacion"
      return HabitacionFactory.create(argumentos[0], argumentos[1], argumentos[2], argumentos[3])
    end
  end
end
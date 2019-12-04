require_relative './HabitacionFactory'

# Clase Factory principal
require "test/unit"
require_relative '../models/Persona/Familia.rb'
require_relative '../models/Persona/Visita.rb'

class Factory
  def self.dameObjeto1(tipo, *argumentos)
    case tipo
    when "habitacion"
      return HabitacionFactory.create(argumentos[0], argumentos[1], argumentos[2], argumentos[3])
    end
  end
	def self.dameObjeto2(tipo, *arg)
     case tipo
     when "familia"
          return Familia.new(arg[0], arg[1], arg[2], arg[3],arg[4], arg[5])
     when "visita"
         return Visita.new(arg[0], arg[1], arg[2], arg[3],arg[4], arg[5], arg[6])
     end
  end
end

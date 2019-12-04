require_relative './PersonaFactory.rb'
require_relative './HabitacionFactory.rb'
require_relative './ServicioFactory.rb'

class Factory
  def self.dameObjeto(tipo, *argumentos)
    case tipo
    when "habitacion"
      return HabitacionFactory.create(*argumentos)
    when "servicio"
      return ServicioFactory.create(*argumentos)
    when "persona"
      return PersonaFactory.create(*argumentos)
    end
  end
end

require_relative '../models/Persona/Familia.rb'
require_relative '../models/Persona/Visita.rb'

class PersonaFactory

  def self.create(tipo, *argumentos)
    case tipo
    when 'Familia'
      Familia.new(argumentos[0], *argumentos[1], *argumentos[2], *argumentos[3], *argumentos[4], *argumentos[5])
    when 'Visita'
      Visita.new(argumentos[0], *argumentos[1], *argumentos[2], *argumentos[3], *argumentos[4], *argumentos[5], *argumentos[6])
    end
  end
end

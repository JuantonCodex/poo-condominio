require_relative '../models/Persona/Familia.rb'
require_relative '../models/Persona/Visita.rb'

class PersonaFactory

  def self.create(*argumentos)
    tipo = argumentos[0]

    case tipo
    when 'familia'

      Familia.new(argumentos[1], argumentos[2], argumentos[3], argumentos[4], argumentos[5], argumentos[6])
    when 'visita'

      Visita.new(argumentos[1], argumentos[2], argumentos[3], argumentos[4], argumentos[5], argumentos[6], argumentos[7])
    end
  end
end
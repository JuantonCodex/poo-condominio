require_relative '../models/Persona/Familia.rb'
require_relative '../models/Persona/Visita.rb'

class PersonaRepository

  def initialize()
    @personas = []
  end

  def obtenerPersonas()

    familia1 = PersonaFactory.create(1, 1, 'Pedro','Ramos','4324567',30)
    familia2 = PersonaFactory.create(2,2,'Juan','Gomez','3456711',27)
    visita1 = PersonaFactory.create(1, 3,'Maria','Taira','6789012',23,'02/12/2019')
    visita2 = PersonaFactory.create(2, 3,'Juan','Lopez','6402000',34,'02/12/2019')
    visita3 = PersonaFactory.create(3, 4,'Benito','Juarez','3421567',31,'01/12/2019')


    agregarPersona(familia1)
    agregarPersona(familia2)
    agregarPersona(visita1)
    agregarPersona(visita2)
    agregarPersona(visita3)

    return personas

  end

  def agregarPersona(persona)
    personas.push(servicio)
  end
  
end
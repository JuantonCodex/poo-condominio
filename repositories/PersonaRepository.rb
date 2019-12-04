require_relative '../models/Persona/Familia.rb'
require_relative '../models/Persona/Visita.rb'

class PersonaRepository
  attr_accessor :arregloPersonas
  def initialize()
    @arregloPersonas = []
  end

  # Devuelve la lista de habitaciones registradas
  def obtenerPersonas()
    return arregloPersonas
  end

  def registrarPersona(persona)
    arregloPersonas.push(persona)
  end

end
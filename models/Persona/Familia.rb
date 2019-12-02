require_relative './Persona.rb'
class Familia < Persona
  def initialize(personaID, habitacionID, nombre, apellido, dni, edad)
    super(personaID, habitacionID, nombre, apellido, dni, edad)
  end
end

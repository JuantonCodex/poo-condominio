require_relative './Persona.rb'
class Familia < Persona
  def initialize(personaID, habitacionID, nombre, apellido, dni, edad)
    super(personaID, habitacionID, nombre, apellido, dni, edad)
  end

  def dameTipo
  	'Familia'
  end

	def muestraDatos
		"Nombres: #{nombre} #{apellido}  - DNI: #{dni} - Edad:  #{edad}"
	end

end

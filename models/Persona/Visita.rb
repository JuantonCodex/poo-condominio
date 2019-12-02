require_relative './Persona.rb'
class Visita < Persona
	attr_accessor :fechaVisita
	def initialize(personaID, habitacionID, nombre, apellido, dni, edad,fechaVisita)
	    super(personaID, habitacionID, nombre, apellido, dni, edad)
	end
  def dameTipo
  	'Visita'
  end

	def muestraDatos
		"Nombres: #{nombre} #{apellido}  - DNI: #{dni} - Edad:  #{edad} - Fecha: #{fechaVisita}"
	end
end

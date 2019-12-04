require_relative './Persona.rb'
class Visita < Persona
	attr_accessor :personaID, :habitacionID, :nombre, :apellido, :dni, :edad, :fechaVisita
	def initialize(personaID, habitacionID, nombre, apellido, dni, edad, fechaVisita)
	    super(personaID, habitacionID, nombre, apellido, dni, edad)
	    @fechaVisita = fechaVisita
	end
	def dameTipo
	  	return 'Visita'
	end

	def muestraDatos
		"Nombres: #{nombre} #{apellido}  - DNI: #{dni} - Edad:  #{edad} - Fecha: #{fechaVisita}"
	end
end

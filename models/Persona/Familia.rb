require_relative './Persona.rb'
class Familia < Persona
	attr_accessor :personaID, :habitacionID, :nombre, :apellido, :dni, :edad, :fechaVisita
  	def initialize(personaID, habitacionID, nombre, apellido, dni, edad)
    	super(personaID, habitacionID, nombre, apellido, dni, edad)
    	@fechaVisita=fechaVisita
  	end

  	def dameTipo
  		'Familia'
  	end

	def muestraDatos
		"Nombres: #{nombre} #{apellido}  - DNI: #{dni} - Edad:  #{edad}"
	end

end

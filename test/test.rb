require "test/unit"
require_relative '../controllers/Controlador.rb'
require_relative '../models/Administracion/Administracion.rb'
require_relative '../views/Vista.rb'


class TestCondominio < Test::Unit::TestCase
	
	def setup
		@administracion = Administracion.new("Edgar", "Rivas", "Las Flores")
		@vista = Vista.new
		@controlador = Controlador.new(@vista, @administracion)

		@controlador.registrarPersona("familia", 1, 1, "Celso", "Cerrano", 40404040, 32)
		@controlador.registrarPersona("familia", 2, 2, "Rocel", "Chavez", 40404041, 35)
		
	end
	def testListaPersonas
		@controlador.obtenerListaPersonas()
	end
end
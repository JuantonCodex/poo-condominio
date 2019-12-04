require "test/unit"
require_relative '../controllers/Controlador.rb'
require_relative '../models/Administracion/Administracion.rb'
require_relative '../views/Vista.rb'

@administracion = Administracion.new
@vista = Vista.new
@controlador = Controlador.new(@administracion, @vista)

@controlador.registrarPersona("familia", 1, 1, "Celso", "Cerrano", 40404040, 32)
@controlador.registrarPersona("familia", 2, 2, "Rocel", "Chavez", 40404041, 35)
@controlador.registrarPersona("visita", 3, 1, "Raquel", "Sanchez", 40404042, 29, "2019-12-01")
@controlador.registrarPersona("visita", 4, 1, "Andrea", "Vivas", 40404043, 30, "2019-11-20")

# class TestCondominio < Test::Unit::TestCase

# 	def setup

# 		@administracion = Administracion.new("Edgar", "Rivas", "Las Flores")
# 		@vista = Vista.new
#     @controlador = Controlador.new(@vista, @administracion)

# 		@controlador.registrarPersona("familia", 1, 1, "Celso", "Cerrano", 40404040, 32)
# 		@controlador.registrarPersona("familia", 2, 2, "Rocel", "Chavez", 40404041, 35)
# 		@controlador.registrarPersona("visita", 3, 1, "Raquel", "Sanchez", 40404042, 29, "2019-12-01")
#     @controlador.registrarPersona("visita", 4, 1, "Andrea", "Vivas", 40404043, 30, "2019-11-20")

#   end

# 	def test1ListaPersonas
# 		@controlador.obtenerPersonas()
# 	end

# 	def test2BuscarVisitaXFecha
# 		@controlador.obtenerVisitasXFecha("2019-12-01")
# 	end

# 	def test3BuscarVisitaXRangoFecha
# 		@controlador.obtenerVisitasXRangoFecha("2019-11-19", "2019-12-02")
#   end

# end
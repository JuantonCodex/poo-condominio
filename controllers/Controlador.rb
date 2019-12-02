require_relative '../controllers/BaseControlador'

class Controlador

	attr_accessor :vista, :administracion

	def initialize(vista,administracion)
		@vista = vista
		@administracion = administracion
	end

	def listarVisitaXFecha
		
	end

end
require_relative '../controllers/BaseControlador'
require_relative '../repositories/ServicioRepository'

class Controlador

	attr_accessor :vista, :administracion

	def initialize(vista,administracion)
		@vista = vista
		@administracion = administracion
	end

   def cargarServicios
   		servicioRepo = ServicioRepository.new
   		servicios = servicioRepo.obtenerServicios
   end

end


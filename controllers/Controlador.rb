require_relative '../controllers/BaseControlador'
require_relative '../repositories/ServicioRepository'
require_relative '../repositories/PersonaRepository'
require_relative '../repositories/HabitacionRepository'

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

   def cargarPersonas
   		personaRepo = PersonaRepository.new
   		personas = personaRepo.obtenerPersonas
   end

   def cargarHabitaciones
   		habitacionRepo = HabitacionRepository.new
   		habitaciones = habitacionRepo.cargarHabitaciones
   end

   def obtenerVisitasXFecha(fecha)
   	   puts "Lista de visitas en #{fecha} "
   	   arreglo = administracion.obtenerVisitasXFecha(fecha)
   	   vista.imprimirListado(arreglo)
   	   puts "-------------------"
   end

   def obtenerVisitasXRangoFecha(fechaInicial,fechaFin)
   	   puts "Lista de visitas entre #{fechaInicial} y  #{fechaFin}  "
   	   arreglo = administracion.obtenerVisitasXRangoFecha(fechaInicial,fechaFin)
   	   vista.imprimirListado(arreglo)
   	   puts "-------------------"
   end

end


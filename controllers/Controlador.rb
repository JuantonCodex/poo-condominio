require_relative '../controllers/BaseControlador.rb'
require_relative '../repositories/ServicioRepository.rb'
require_relative '../repositories/PersonaRepository.rb'
require_relative '../repositories/HabitacionRepository.rb'
require_relative '../factories/Factory.rb'

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

   def registrarPersona(tipo, *arg)
      persona = Factory.dameObjeto(tipo, *arg)
      resultado = administracion.registrarPersona(persona)
      #vista.mostrarMensaje(resultado)
   end
   def obtenerListaPersonas()
         puts "Lista de personas"
         arregloPersonas = administracion.obtenerListaPersonas()
         vista.imprimirListado(arregloPersonas)
         puts "-------------------"
   end

end


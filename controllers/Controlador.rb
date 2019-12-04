require_relative '../factories/Factory.rb'

class Controlador

  attr_accessor :vista, :administracion

  def initialize(administracion, vista)
    @administracion = administracion
    @vista = vista
  end

  # ==================== Setters =====================
  def registrarHabitacion(*argumentos)
    habitacion = Factory.dameObjeto('habitacion', *argumentos)
    resultado = administracion.registrarHabitacion(habitacion)

    # Muestra el resultado del registro
    vista.mostrarMensaje(resultado)
  end

  def registrarPersona(*argumentos)
    persona = Factory.dameObjeto('persona', *argumentos)
    resultado = administracion.registrarPersona(persona)

    # Muestra el resultado del registro
    vista.mostrarMensaje(resultado)
  end

  # ==================== Getters =====================
  def obtenerHabitaciones
    habitaciones = administracion.obtenerHabitaciones()
    vista.imprimirListado(habitaciones)
  end

  def obtenerPersonas
    personas = administracion.obtenerPersonas()
    vista.imprimirListado(personas)
  end

  # def cargarServicios
  #   servicioRepo = ServicioRepository.new
  #   servicios = servicioRepo.obtenerServicios
  # end

  # def cargarPersonas
  #   personaRepo = PersonaRepository.new
  #   personas = personaRepo.obtenerPersonas
  # end

  # def obtenerVisitasXFecha(fecha)
  #   puts "Lista de visitas en #{fecha} "
  #   arreglo = administracion.obtenerVisitasXFecha(fecha)
  #   vista.imprimirListado(arreglo)
  #   puts "-------------------"
  # end

  # def obtenerVisitasXRangoFecha(fechaInicial,fechaFin)
  #   puts "Lista de visitas entre #{fechaInicial} y  #{fechaFin}  "
  #   arreglo = administracion.obtenerVisitasXRangoFecha(fechaInicial,fechaFin)
  #   vista.imprimirListado(arreglo)
  #   puts "-------------------"
  # end

end

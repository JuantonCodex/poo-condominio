require_relative '../controllers/BaseControlador.rb'
require_relative '../repositories/ServicioRepository.rb'
require_relative '../repositories/HabitacionRepository.rb'
require_relative '../factories/Factory.rb'

class Controlador

  attr_accessor :vista, :administracion

  def initialize(vista,administracion)
    @vista = vista
    @administracion = administracion
  end

  def cargarHabitaciones
     habitacionRepo = HabitacionRepository.new
     habitaciones = habitacionRepo.cargarHabitaciones
     vista.imprimirListado(habitaciones)
  end

  def cargarServicios
     servicioRepo = ServicioRepository.new
     servicios = servicioRepo.obtenerServicios
     vista.imprimirListado(servicios)
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

  def obtenerVisitasXDNI(dni)
     puts "Visita buscada"
     arreglo = administracion.obtenerVisitasXDNI(dni)
     vista.imprimirListado(arreglo)
     puts "-------------------"
  end

  def obtenerVisitasXHabitacion(numero)
     puts "Visitas en la habitacion #{numero}"
     arreglo = administracion.obtenerVisitasXHabitacion(numero)
     vista.imprimirListado(arreglo)
     puts "-------------------"
  end

  def obtenerPagoServicioXDNI(dni)
     puts "Pago de servicio del DNI #{dni}"
     arreglo = administracion.obtenerPagoServicioXDNI(dni)
     vista.imprimirListado(arreglo)
     puts "-------------------"
  end

  def obtenerPagoServicioXHabitacion(numeroHabitacion)
     puts "Pago de servicio de la habitacion #{numeroHabitacion}"
     arreglo = administracion.obtenerPagoServicioXHabitacion(numeroHabitacion)
     vista.imprimirListado(arreglo)
     puts "-------------------"
  end

  def registrarPersona(tipo, *arg)
    persona = Factory.dameObjeto(tipo, *arg)
    resultado = administracion.registrarPersona(persona)
        #vista.mostrarMensaje(resultado)
  end

  def registrarPagoServicio(tipo, *arg)
    pagoServicio = Factory.dameObjeto(tipo, *arg)
    resultado = administracion.registrarPagoServicio(pagoServicio)
        #vista.mostrarMensaje(resultado)
  end

  def obtenerListaPersonas()
       puts "Lista de personas"
       arregloPersonas = administracion.obtenerListaPersonas()
       vista.imprimirListado(arregloPersonas)
       puts "-------------------"
  end

  def obtenerListaServicios()
       puts "Lista de servicios"
       arregloServicios = administracion.obtenerListaServicios()
       vista.imprimirListado(arregloServicios)
       puts "-------------------"
  end

  def obtenerListaPagoServicio()
       puts "Lista de pago de servicios"
       arregloPagoServicio = administracion.obtenerListaPagoServicio()
       vista.imprimirListado(arregloPagoServicio)
       puts "-------------------"
  end

end

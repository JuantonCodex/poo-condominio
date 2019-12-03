# require_relative '../../controllers/BaseControlador'
require_relative '../../repositories/ServicioRepository'
# require_relative '../../repositories/PersonaRepository'
require_relative '../../repositories/HabitacionRepository'

class Administracion

  attr_accessor :arreglo_personas, :arreglo_habitaciones, :arreglo_servicios, :arreglo_pago_servicios, :habitacionRepo, :servicioRepo
  def initialize
    @arreglo_personas = []
    @arreglo_habitaciones = []
    @arreglo_servicios = []
    @arreglo_pago_servicios  = []
    @habitacionRepo = HabitacionRepository.new
    @servicioRepo = ServicioRepository.new
  end

  # ==================== Setters =====================
  def registrarHabitacion(habitacion)
    resultadoRegistro = habitacionRepo.registrarHabitacion(habitacion)
    return resultadoRegistro
  end

  def registrarServicio(servicio)
    resultadoRegistro = servicioRepo.registrarServicio(servicio)
    return resultadoRegistro
  end

  # ==================== Getters =====================
  def obtenerHabitaciones()
    habitaciones = habitacionRepo.obtenerHabitaciones()
    return habitaciones
  end

  def obtenerServicios()
    servicios = servicioRepo.obtenerServicios()
    return servicios
  end

  def obtenerVisitasXFecha(fecha)
    temp = []
    for persona in arreglo_personas
      if persona.fecha==fecha and persona.dameTipo=='Visita'
        temp.push(persona)
      end
    end
    return temp
  end

  def obtenerVisitasXRangoFecha(fechaInicial,fechaFinal)
    temp = []
    for persona in arreglo_personas
      if persona.fecha>=fechaInicial and persona.fecha<=fechaFinal
        temp.push(persona)
      end
    end
    return temp
  end

end
# require_relative '../../repositories/ServicioRepository'
require_relative '../../repositories/PersonaRepository.rb'
require_relative '../../repositories/HabitacionRepository.rb'

class Administracion
	attr_accessor :personaRepo, :habitacionRepo
	def initializes
		# @nombre = nombre
		# @apellido = apellido
		# @condominio = condominio
		# @arregloServicios = []
  #   @arregloPagoServicios = []


    @personaRepo = PersonaRepository.new()
    @habitacionRepo = HabitacionRepository.new()
	end

  # ==================== Setters =====================
  # def registrarHabitacion(habitacion)
  #   resultadoRegistro = habitacionRepo.registrarHabitacion(habitacion)
  #   return resultadoRegistro
  # end

  def registrarPersona(persona)
    puts('ok')
    # resultadoRegistro = personaRepo.registrarPersona(persona)
    # return resultadoRegistro
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

  def obtenerPersonas()
    personas = personaRepo.obtenerPersonas()
    return personas
  end

  # ==================== Old =====================
	# def registrarServicio(servicio)
	# 	arregloServicios.push(servicio)
	# end

	# def registrarPagoServicio(pagoServicio)
	# 	arregloPagoServicios.push(pagoServicio)
	# end

	# def obtenerVisitasXFecha(fecha)
	# 	arreglo = []
	# 	for persona in arregloPersonas
	# 		if persona.fechaVisita == fecha
	# 			arreglo.push(persona)
	# 		end
	# 	end
	# 	return arreglo
	# end

	# def obtenerVisitasXRangoFecha(fechaInicial, fechaFinal)
	# 	arreglo = []
	# 	for persona in arregloPersonas
	# 		if persona.dameTipo == 'Visita'
	# 			if persona.fechaVisita >= fechaInicial and persona.fechaVisita <= fechaFinal
	# 				arreglo.push(persona)
	# 			end
	# 		end

	# 	end
	# 	return arreglo
	# end
end

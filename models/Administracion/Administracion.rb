class Administracion

	attr_accessor :arreglo_personas, :arreglo_habitaciones, :arreglo_servicios, :arreglo_pago_servicios
	def initialize
        @arreglo_personas = []
        @arreglo_habitaciones = []
        @arreglo_servicios = []
        @arreglo_pago_servicios  = []
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
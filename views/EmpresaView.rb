require_relative 'BaseView'

class EmpresaView < BaseView

	attr_accessor :arreglo_personas, :arreglo_habitaciones, :arreglo_servicios, :arreglo_pago_servicios
	def initialize
        @arreglo_personas = []
        @arreglo_habitaciones = []
        @arreglo_servicios = []
        @arreglo_pago_servicios  = []
    end

    def setPersonas(personas)
        @arreglo_personas = personas
    end

    def setHabitaciones(habitaciones)
        @arreglo_habitaciones = habitaciones
    end

    def setServicios(servicios)
        @arreglo_servicios = servicios
    end

    def setPagoServicios(pagoServicios)
        @arreglo_pago_servicios = pagoServicios
    end

end
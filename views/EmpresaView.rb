require_relative 'BaseView'

class EmpresaView < BaseView

	attr_accessor :arreglo_personas, :arreglo_habitaciones, :arreglo_servicios, :arreglo_pago_servicios
	def initialize
        @arreglo_personas = []
        @arreglo_habitaciones = []
        @arreglo_servicios = []
        @arreglo_pago_servicios  = []
    end

end
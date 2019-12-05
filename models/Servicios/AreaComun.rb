require_relative './Servicios.rb'
class AreaComun < Servicios

  attr_accessor :servicioID, :nombre
  def initialize(servicioID, nombre)
    super(servicioID, nombre)
  end
  def calcularPago
    650
  end

  def muestraDatos
    "Codigo de servicio: #{servicioID} - Nombre de servicio: #{nombre}"
  end
end

require_relative './Servicios.rb'
class Luz < Servicios

  attr_accessor :servicioID, :nombre
  def initialize(servicioID, nombre)
    super(servicioID, nombre)
  end
  def calcularPago
    200
  end

  def muestraDatos
    "Codigo de servicio: #{servicioID} - Nombre de servicio: #{nombre}"
  end
end

require_relative './Servicios.rb'
class Seguridad < Servicios

  attr_accessor :servicioID, :nombre
  def initialize(servicioID, nombre)
    super(servicioID, nombre)
  end

  def calcularPago
    1200
  end

  def muestraDatos
    "Codigo de servicio: #{servicioID} - Nombre de servicio: #{nombre}"
  end
end

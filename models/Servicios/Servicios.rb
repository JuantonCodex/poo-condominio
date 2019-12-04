class Servicios

  attr_accessor :servicioID, :nombre
  def initialize(servicioID, nombre)
        @servicioID, @nombre = servicioID, nombre
  end

  def calcularPago
  end

  def muestraDatos
  end
end
class Servicios  

  attr_accessor :servicioID, :nombre

  def initialize(servicioID, nombre)
        @servicioID, @nombre = servicioID, nombre
  end
  def calcularPago
    return 'Clase Padre'
  end
end
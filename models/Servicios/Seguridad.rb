require_relative './Servicios.rb'
class Seguridad < Servicios
  def initialize
  end
  def calcularPago
    puts super + ' y subclase'
  end
end

# Lineas de prueba de herencia
seguridad = Seguridad.new();
seguridad.calcularPago()
require_relative './Servicios.rb'
class Luz < Servicios
  def initialize
  end
  def calcularPago
    puts super + ' y subclase'
  end
end

# Lineas de prueba de herencia
luz = Luz.new();
luz.calcularPago()
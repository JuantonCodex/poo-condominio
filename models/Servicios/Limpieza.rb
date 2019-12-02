require_relative './Servicios.rb'
class Limpieza < Servicios
  def initialize
  end
  def calcularPago
    puts super + ' y subclase'
  end
end

# Lineas de prueba de herencia
limpieza = Limpieza.new();
limpieza.calcularPago()
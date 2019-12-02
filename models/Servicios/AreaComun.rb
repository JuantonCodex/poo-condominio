require_relative './Servicios.rb'
class AreaComun < Servicios
  def initialize
  end
  def calcularPago
    puts super + ' y subclase'
  end
end

# Lineas de prueba de herencia
areaComun = AreaComun.new();
areaComun.calcularPago()
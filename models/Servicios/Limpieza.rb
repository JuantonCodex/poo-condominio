require_relative './Servicios.rb'
class Limpieza < Servicios
  def initialize(servicioID, nombre)
    super(servicioID, nombre)
  end
end
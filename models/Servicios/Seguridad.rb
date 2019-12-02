require_relative './Servicios.rb'
class Seguridad < Servicios
  def initialize(servicioID, nombre)
    super(servicioID, nombre)
  end
end
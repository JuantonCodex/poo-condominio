require_relative './Servicios.rb'
class Luz < Servicios
  def initialize(servicioID, nombre)
    super(servicioID, nombre)
  end
end
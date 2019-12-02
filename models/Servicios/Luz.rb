require_relative './Servicios.rb'
class Luz < Servicios
  def initializetipo(servicioID, nombre)
    super(servicioID, nombre)
  end
end
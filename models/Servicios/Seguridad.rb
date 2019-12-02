require_relative './Servicios.rb'
class Seguridad < Servicios
  def initializetipo(servicioID, nombre)
    super(servicioID, nombre)
  end
end
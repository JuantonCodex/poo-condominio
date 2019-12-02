require_relative './Servicios.rb'
class AreaComun < Servicios
  def initialize(servicioID, nombre)
    super(servicioID, nombre)
  end
end
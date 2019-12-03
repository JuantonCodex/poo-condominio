require_relative '../models/Servicios/Servicios.rb'

class ServicioRepository

  attr_accessor :servicios
  def initialize()
    @servicios = []
  end

  # Devuelve la lista de servicios
  def registrarServicio(servicio)
    servicios.push(servicio)
    return 'Servicio registrado'
  end

  def obtenerServicios()
    return servicios
  end

end
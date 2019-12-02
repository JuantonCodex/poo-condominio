require_relative '../factories/ServicioFactory.rb'

class ServicioRepository

  def initialize()
    @servicios = []
  end

  def obtenerServicios()

    servicio1 = AreaComun.create(1, 'Area Comun')
    servicio2 = Limpieza.create(2, 'Limpieza')
    servicio3 = Luz.create(3, 'Luz')
    servicio4 = Seguridad.create(4, 'Seguridad')

    agregarServicio(servicio1)
    agregarServicio(servicio2)
    agregarServicio(servicio3)
    agregarServicio(servicio4)

    return servicios

  end

  def agregarServicio(servicio)
    servicios.push(servicio)
  end
  
end
require_relative '../factories/ServicioFactory.rb'

class ServicioRepository

  def initialize()

  end

  def cargar_servicios()

    @auxServicios = []

    servicio1 = AreaComun.create(1, 'Area Comun')
    servicio2 = Limpieza.create(2, 'Limpieza')
    servicio3 = Luz.create(3, 'Luz')
    servicio4 = Seguridad.create(4, 'Seguridad')

    auxServicios.push(servicio1)
    auxServicios.push(servicio2)
    auxServicios.push(servicio3)
    auxServicios.push(servicio4)

    return auxServicios

  end
  
end
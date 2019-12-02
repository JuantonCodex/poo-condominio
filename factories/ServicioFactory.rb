require_relative '../models/Servicios/AreaComun.rb'
require_relative '../models/Servicios/Limpieza.rb'
require_relative '../models/Servicios/Luz.rb'
require_relative '../models/Servicios/Seguridad.rb'

class ServicioFactory

  def self.create(codigo, nombre)
    case codigo
    when 'Area Comun'
      AreaComun.new(codigo, nombre)
    when 'Limpieza'
      Limpieza.new(codigo, nombre)
    when 'Luz'
      Luz.new(codigo, nombre)
    when 'Seguridad'
      Seguridad.new(codigo, nombre)
    end
  end
end

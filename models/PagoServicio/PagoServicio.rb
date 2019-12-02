# Esta clase identifica al espacio ocupado por una familia
# o grupo de habitantes, tal como un departamento

class PagoServicio
  def initialize(habitacionID, personaID, servicioID, periodo,valor)
    @habitacionID = habitacionID
    @personaID = personaID
    @servicioID = servicioID
    @periodo = periodo
    @valor = valor
  end
end
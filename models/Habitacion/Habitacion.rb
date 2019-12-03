# Esta clase identifica al espacio ocupado por una familia
# o grupo de habitantes, tal como un departamento

class Habitacion
  attr_accessor :habitacionID, :pabellon, :piso, :numeroHabitacion
  def initialize(habitacionID, pabellon, piso, numeroHabitacion)
    @habitacionID = habitacionID
    @pabellon = pabellon
    @piso = piso
    @numeroHabitacion = numeroHabitacion
  end

  def muestraDatos
		"ID: #{habitacionID} - Pabellón: #{pabellon} - Piso:  #{piso} - Nro Habitación: #{pabellon}"
  end

end
# Esta clase identifica al espacio ocupado por una familia
# o grupo de habitantes, tal como un departamento

class Habitacion

  attr_accessor :habitacionID, :pabellon,:piso, :numeroHabitacion
  def initialize(habitacionID, pabellon, piso, numeroHabitacion)
    @habitacionID = habitacionID
    @pabellon = pabellon
    @piso = piso
    @numeroHabitacion = numeroHabitacion
  end
  def muestraDatos
    "Codigo de habitacion: #{habitacionID} - Pabellon: #{pabellon} - Piso: #{piso} - Nº Habitacion: #{numeroHabitacion} "
  end
end

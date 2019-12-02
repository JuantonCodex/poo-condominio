# Esta clase identifica al espacio ocupado por una familia
# o grupo de habitantes, tal como un departamento

class Habitacion
  def initialize(habitacionID, pabellon, piso, numeroHabitacion)
    @habitacionID = habitacionID
    @pabellon = pabellon
    @piso = piso
    @numeroHabitacion = numeroHabitacion
  end
end
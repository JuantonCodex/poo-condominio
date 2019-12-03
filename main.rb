require_relative './controllers/Controlador'
require_relative './models/Administracion/Administracion'
require_relative './views/Vista'

administracion = Administracion.new()
vista = Vista.new()
controlador = Controlador.new(administracion, vista)

# Registra habitaciones
controlador.registrar('habitacion', 1,'E','1','101')
controlador.registrar('habitacion', 2,'A','1','102')
controlador.registrar('habitacion', 3,'B','2','201')

# Devuelve la lsita de habitaciones registradas
controlador.obtenerHabitaciones()


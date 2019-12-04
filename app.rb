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

controlador.registrar('servicio',1, 'Area Comun')
controlador.registrar('servicio',2, 'Limpieza')
controlador.registrar('servicio',3, 'Luz')
controlador.registrar('servicio',4, 'Seguridad')

# Devuelve la lsita de habitaciones registradas
controlador.obtenerHabitaciones()
puts "-------------------"
controlador.obtenerServicios()
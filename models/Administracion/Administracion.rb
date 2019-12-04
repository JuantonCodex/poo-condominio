class Administracion
    attr_accessor :nombre, :apellido, :condominio, :arregloPersonas, :arregloHabitaciones, :arregloServicios, :arregloPagoServicios
    def initialize(nombre, apellido, condominio)
        @nombre = nombre
        @apellido = apellido
        @condominio = condominio
        @arregloPersonas = []
        @arregloHabitaciones = []
        @arregloServicios = []
        @arregloPagoServicios = []
    end

    def registrarHabitacion(habitacion)
        arregloHabitaciones.push(habitacion)
    end

    def registrarPersona(persona)
        arregloPersonas.push(persona)
    end

    def registrarServicio(servicio)
        arregloServicios.push(servicio)
    end

    def registrarPagoServicio(pagoServicio)
        arregloPagoServicios.push(pagoServicio)
    end

    def obtenerListaPersonas
        return arregloPersonas
    end
    def obtenerVisitasXFecha(fecha)
        arreglo = []
        for persona in arregloPersonas
            if persona.fechaVisita == fecha
                arreglo.push(persona)
            end
        end
        return arreglo
    end

    def obtenerVisitasXRangoFecha(fechaInicial, fechaFinal)
        arreglo = []
        for persona in arregloPersonas
            if persona.dameTipo == 'Visita'
                if persona.fechaVisita >= fechaInicial and persona.fechaVisita <= fechaFinal
                    arreglo.push(persona)
                end
            end

        end
        return arreglo
    end


    def obtenerVisitasXDNI(dni)
        arreglo = []
        for persona in arregloPersonas
            if persona.dameTipo == 'Visita'
                if persona.dni == dni
                    arreglo.push(persona)
                end
            end

        end
        return arreglo
    end

    def obtenerVisitasXHabitacion(numero)
        arreglo = []
        for persona in arregloPersonas
            if persona.dameTipo == 'Visita'
                if persona.habitacionID == numero
                    arreglo.push(persona)
                end
            end

        end
        return arreglo
    end
end
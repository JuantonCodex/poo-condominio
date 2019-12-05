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

    def registrarPersona(persona)
        arregloPersonas.push(persona)
    end

    def registrarPagoServicio(pagoServicio)
        arregloPagoServicios.push(pagoServicio)
    end

    def registrarPagoServicio(pagoServicio)
        arregloPagoServicios.push(pagoServicio)
    end

    def obtenerListaPersonas
        return arregloPersonas
    end

    def obtenerListaServicios
        return arregloServicios
    end

    def obtenerListaPagoServicio
        return arregloPagoServicios
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

    def obtenerPagoServicioXDNI(dni)
        arreglo = []
        for pagoServicio in arregloPagoServicios
                if pagoServicio.personaID == dni
                    arreglo.push(pagoServicio)
                end
        end
        return arreglo
    end

    def obtenerPagoServicioXHabitacion(numeroHabitacion)
        arreglo = []
        for pagoServicio in arregloPagoServicios
                if pagoServicio.habitacionID == numeroHabitacion
                    arreglo.push(pagoServicio)
                end
        end
        return arreglo
    end


    def obtenerListadoDeudores()
        arreglo = []
        for pagoServicio in arregloPagoServicios
                if pagoServicio.valor == 0
                    for persona in arregloPersonas
                        if persona.dni == pagoServicio.personaID
                            arreglo.push(pagoServicio)
                        end
                    end
                end
        end
        return arreglo
    end

end

class Persona  

  attr_accessor :personaID, :habitacionID, :nombre, :apellido, :dni, :edad

  def initialize(personaID, habitacionID, nombre, apellido, dni, edad)
        @personaID, @habitacionID, @nombre, @apellido, @dni, @edad = personaID, habitacionID, nombre, apellido, dni, edad
  end
  def dameTipo
  end
  def muestraDatos
  end
end
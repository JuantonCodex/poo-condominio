class Vista


  def mostrarMensaje(resultado)
    puts resultado
  end

  def imprimirListado(listado)
    for item in listado
      puts item.muestraDatos
    end
  end
end
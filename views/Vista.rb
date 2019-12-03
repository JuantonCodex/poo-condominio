class Vista

<<<<<<< HEAD

  def mostrarMensaje(resultado)
    puts resultado
  end

  def imprimirListado(listado)
    for item in listado
      puts item.muestraDatos
    end
  end
=======
   def mostrarMensaje(resultado)
   	  puts resultado
   end
   def imprimirListado(arregloVisita)
   	  for visita in arregloVisita
   	  	 puts visita.muestraDatos
   	  end
   end
   def imprimirListaPersonas(arregloPersonas)
   	  for persona in arregloPersonas
   	  	 puts persona.muestraDatos
   	  end
   end
>>>>>>> 6f2ed550996c1ddb4143b8170646ae938ab97080
end
class Vista

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
end

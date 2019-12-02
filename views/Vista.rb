class Vista

   def mostrarMensaje(resultado)
   	  puts resultado
   end
   def imprimirListado(arregloVisita)
   	  for visita in arregloVisita
   	  	 puts visita.muestraDatos
   	  end
   end
end
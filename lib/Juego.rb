class Juego 
  
 def initialize 
  @opciones = { "papel-papel" => 0, "tijera-papel" => 1, "piedra-papel" => 2,
               "tijera-tijera" => 0, "papel-tijera" => 2, "piedra-tijera" => 1,
               "piedra-piedra" => 0, "papel-piedra" => 1, "tijera-piedra" => 2}
 end  
 
 def generarRandom 
  ran = rand(1..1)
  if ran == 1 
   cpu = "papel"
  #elsif ran == 2 
  # cpu = "piedra"
  #else 
  # cpu = "tijera"
  end  
 end

 def comparar usuario1, cpu

  variableComparacion = usuario1 + "-" + cpu

  if @opciones[variableComparacion] == 0
   return "empate"
  elsif @opciones[variableComparacion] == 1
   return "Gana jugador 1"
  elsif @opciones[variableComparacion] == 2
   return "Gana CPU"   
  end
 end


end

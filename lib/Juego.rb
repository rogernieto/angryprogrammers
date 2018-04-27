class Juego 
  
 def initialize 
  @opciones = { "papel-papel" => 0, "tijera-papel" => 1, "piedra-papel" => 2,
               "tijera-tijera" => 0, "papel-tijera" => 2, "piedra-tijera" => 1,
               "piedra-piedra" => 0, "papel-piedra" => 1, "tijera-piedra" => 2}
 end  
 
 def generarRandom (valor = "")
  if valor == ""
    ran = rand(1..3)
    if ran = 1
     valor = "piedra"
    elsif ran = 2
     valor = "papel"
    else
     valor = "tijera"
    end
  else
   valor
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

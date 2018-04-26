class Juego 
  
 
 def generarRandom 
  ran = rand(1..1)
  if ran == 1 
   cpu = "papel"
  elsif ran == 2 
   cpu = "piedra"
  else 
   cpu = "tijera"
  end  
 end


end

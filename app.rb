require 'sinatra'
require './lib/Juego.rb'

@@cpu = ""


get '/' do
   @@juego = Juego.new
   erb :juego
end

post '/' do
    select = params["select_jugador1"]
    opcionCPU = @@juego.generarRandom(@@cpu.downcase())
    resultado_comparacion = @@juego.comparar(select.downcase(), opcionCPU)

    if resultado_comparacion == "Gana CPU"
	@resultado = "Perdiste"
        @scoreCPU = "1"
        @scoreJug = "0"
    elsif resultado_comparacion == "Gana jugador 1"
	@resultado = "Ganaste"
        @scoreCPU = "0"
        @scoreJug = "1"
    elsif resultado_comparacion == "empate"
        @resultado = "Empataste"
        @scoreCPU = "0"
        @scoreJug = "0"
    end
    
    erb :juego
end

require 'sinatra'
require './lib/Juego.rb'

@@cpu = ""

get '/' do
   @@juego = Juego.new
   erb :juego
end

post '/' do
    @imgs = {"papel" => "hand-paper", "tijera" => "hand-scissors", "piedra" => "hand-rock"}

    @opcionJug = params["select_jugador1"].downcase()
    @opcionCPU = @@juego.generarRandom(@@cpu.downcase())
    resultado_comparacion = @@juego.comparar(@opcionJug, @opcionCPU)

    if resultado_comparacion == "Gana CPU"
	@resultado = "Perdiste"
        @scoreCPU = @@juego.scoreCPU()
        @scoreJug = @@juego.scoreJugador()
    elsif resultado_comparacion == "Gana jugador 1"
	@resultado = "Ganaste"
        @scoreCPU = @@juego.scoreCPU()
        @scoreJug = @@juego.scoreJugador()
    elsif resultado_comparacion == "empate"
        @resultado = "Empataste"
        @scoreCPU = @@juego.scoreCPU()
        @scoreJug = @@juego.scoreJugador()
    end
    
    @imgJug = @imgs[@opcionJug]
    @imgCPU = @imgs[@opcionCPU]

    erb :juego
end

require 'sinatra'
require './lib/Juego.rb'

@@cpu = ""

get '/' do
   @@juego = Juego.new
   erb :juego
end

post '/' do
    select = params["select_jugador1"]
    resultado_comparacion = @@juego.comparar(select.downcase(), "piedra")

    if resultado_comparacion == "Gana CPU"
	@resultado = "Perdiste"
    elsif resultado_comparacion == "Gana jugador 1"
	@resultado = "Ganaste"
    else
        @resultado = "Empataste"
    end
    
    erb :juego
end

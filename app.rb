require 'sinatra'

@@cpu = ""

get '/' do
    erb :juego
end

post '/' do
    select = params["select_jugador1"]

    if select == "Tijera"
	@resultado = "Perdiste"
    elsif select == "Papel"
	@resultado = "Ganaste"
    else
        @resultado = "Empataste"
    end
    
    erb :juego
end

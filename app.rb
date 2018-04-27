require 'sinatra'

@@cpu = ""

get '/' do
    erb :juego
end

post '/' do
    select = params["select_jugador1"]
    if select == "Tijera"
	@resultado = "Perdiste"
    else
        @resultado = "Ganaste"
    end
    
    erb :juego
end

require 'sinatra'

@@cpu = ""

get '/' do
    erb :juego
end

post '/' do
    @resultado = "Perdiste"
    erb :juego
end

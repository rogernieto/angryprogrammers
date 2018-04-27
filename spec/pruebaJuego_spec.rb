require './lib/Juego.rb'

describe "PRUEBAS: Piedra, papel o tijera" do

 it "Obtener opcion elegida por CPU" do
  juego = Juego.new 
  juego.generarRandom("papel").should == "papel"
 end

 it "Comparar Opcion Usuario y Opcion Random" do
  juego = Juego.new
  juego.comparar("papel","papel").should == "empate"
 end

 it "Gana jugador 1 y CPU pierde" do
  juego = Juego.new 
  juego.comparar("tijera","papel").should == "Gana jugador 1"
 end

 it "Gana CPU y Jugador 1 pierde" do
  juego = Juego.new 
  juego.comparar("piedra","papel").should == "Gana CPU"
 end

 it "Score del Jugador retorna 0" do
  juego = Juego.new
  juego.scoreJugador.should == 0
 end

 it "Score del CPU retorna 0" do
  juego = Juego.new
  juego.scoreCPU.should == 0
 end

 it "Gana jugador 3 veces y su score es 3 " do
  juego = Juego.new 
  juego.comparar("tijera","papel").should == "Gana jugador 1"
  juego.comparar("tijera","papel").should == "Gana jugador 1" 
  juego.comparar("tijera","papel").should == "Gana jugador 1"
 end

end


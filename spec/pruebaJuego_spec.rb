require './lib/Juego.rb'

describe "PRUEBAS: Piedra, papel o tijera" do

 it "Obtener opcion elegida por CPU" do
  juego = Juego.new 
  juego.generarRandom.should == "papel"
 end

 it "Comparar Opcion Usuario y Opcion Random" do
  juego = Juego.new
  juego.comparar("papel","papel").should == "empate"
 end

end


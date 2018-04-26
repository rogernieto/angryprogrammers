require './lib/Juego.rb'

describe "PRUEBAS: Piedra, papel o tijera" do

 it "Obtener opcion elegida por CPU" do
  juego = Juego.new 
  juego.generarRandom.should == "papel"
 end

end


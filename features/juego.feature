Feature: Juego de piedra, papel o tijera

Scenario: titulo
  Given Voy al inicio
  Then veo "Juego de piedra, papel o tijera"

Scenario: elijo tijera y el CPU piedra
  Given Voy al inicio
  And la computadora va a jugar "Piedra"
  When elijo "Tijera"
  Then veo "Perdiste"
  And el score de CPU es "1"
  And mi score es "0"
  And me muestra la seleccion del CPU "piedra"
  And me muestra mi seleccion "tijera"
 	
Scenario: elijo papel y el CPU piedra
  Given Voy al inicio
  And la computadora va a jugar "Piedra"
  When elijo "Papel"
  Then veo "Ganaste"
  And el score de CPU es "0"
  And mi score es "1"
  And me muestra la seleccion del CPU "piedra"
  And me muestra mi seleccion "papel"

Scenario: elijo piedra y el CPU piedra
  Given Voy al inicio
  And la computadora va a jugar "Piedra"
  When elijo "Piedra"
  Then veo "Empataste"
  And el score de CPU es "0"
  And mi score es "0"
  And me muestra la seleccion del CPU "piedra"
  And me muestra mi seleccion "piedra"

Scenario: elijo papel y el CPU tijera
  Given Voy al inicio
  And la computadora va a jugar "Tijera"
  When elijo "Papel"
  Then veo "Perdiste"
  And el score de CPU es "1"
  And mi score es "0"
  And me muestra la seleccion del CPU "tijera"
  And me muestra mi seleccion "papel"

Scenario: elijo piedra y el CPU tijera
  Given Voy al inicio
  And la computadora va a jugar "Tijera"
  When elijo "Piedra"
  Then veo "Ganaste"
  And el score de CPU es "0"
  And mi score es "1"
  And me muestra la seleccion del CPU "tijera"
  And me muestra mi seleccion "piedra"

Scenario: elijo tijera y el CPU tijera
  Given Voy al inicio
  And la computadora va a jugar "Tijera"
  When elijo "Tijera"
  Then veo "Empataste"
  And el score de CPU es "0"
  And mi score es "0"
  And me muestra la seleccion del CPU "tijera"
  And me muestra mi seleccion "tijera"


Feature: Juego de piedra, papel o tijera

Scenario: titulo
  Given Voy al inicio
  Then veo "Juego de piedra, papel o tijera"

Scenario: elijo tijera
  Given Voy al inicio
  And la computadora va a jugar "Piedra"
  When elijo "Tijera"
  Then veo "Perdiste"
  And el score de CPU es "1"
  And mi score es "0"

Scenario: elijo papel
  Given Voy al inicio
  And la computadora va a jugar "Piedra"
  When elijo "Papel"
  Then veo "Ganaste"
  And el score de CPU es "0"
  And mi score es "1"

Scenario: elijo piedra
  Given Voy al inicio
  And la computadora va a jugar "Piedra"
  When elijo "Piedra"
  Then veo "Empataste"
  And el score de CPU es "0"
  And mi score es "0"

Feature: Juego de piedra, papel o tijera

Scenario: titulo
  Given Voy al inicio
  Then veo "Juego de piedra, papel o tijera"

Scenario: elijo tijera
  Given Voy al inicio
  And la computadora va a jugar "Piedra"
  When elijo "Tijera"
  Then veo "Perdiste"

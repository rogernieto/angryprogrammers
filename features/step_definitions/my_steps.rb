Given(/^Voy al inicio$/) do
  visit '/'
end

Then(/^veo "(.*?)"$/) do |texto|
  last_response.body.should =~ /#{texto}/m
end

Then(/^veo la opción "(.*?)"$/) do |opcion|
  select(opcion, :from => "select_jugada")
end

Given(/^la computadora va a jugar "(.*?)"$/) do |opcion|
  @@cpu = opcion
end

When(/^elijo "(.*?)"$/) do |texto|
  select(texto, :from => "select_jugador1")
  click_button("jugar")
end

Then(/^el score de CPU es "(.*?)"$/) do |scoreCPU|
    texto = "Score CPU: #{scoreCPU}"
    last_response.body.should =~ /#{texto}/m
end

Then(/^mi score es "(.*?)"$/) do |scoreJug|
    texto = "Score Jugador: #{scoreJug}"
    last_response.body.should =~ /#{texto}/m
end

Then(/^me muestra la seleccion del CPU "(.*?)"$/) do |opcion|
  texto = "data-selectcpu=\"#{opcion}\""
  last_response.body.should =~ /#{texto}/m
end

Then(/^me muestra mi seleccion "(.*?)"$/) do |opcion|
  texto = "data-selectjug=\"#{opcion}\""
  last_response.body.should =~ /#{texto}/m
end






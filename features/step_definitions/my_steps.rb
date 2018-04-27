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





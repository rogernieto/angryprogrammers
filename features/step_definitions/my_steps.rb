Given(/^Voy al inicio$/) do
  visit '/'
end

Then(/^veo "(.*?)"$/) do |texto|
  last_response.body.should =~ /#{texto}/m
end

Then(/^veo la opción "(.*?)"$/) do |opcion|
  select(opcion, :from => "select_jugada")
end

Then(/^existe botón "(.*?)"$/) do |texto|
  field_named(texto, "submit")
end




Then(/^I will wait for (\d+) seconds$/) do |waitTime|
  sleep (waitTime.to_i)
end

Given('Im at the Map page for the first time') do
  visit 'https://pauliceia.unifesp.br/portal/explore'
end

When('click the x button on the banner') do
  find(:xpath, '/html/body/div/section/div/section/div/section[3]/header/button').click
end

When('i click the search button') do
  find(:xpath, '/html/body/div[1]/section/div/section/div/section[1]/form/div/div[2]/button').click
end

When('enter a the address {string} on the address bar') do |string|
  find(:xpath, '/html/body/div/section/div/section/div/section[1]/form/div/div[1]/div[1]/input').send_keys string
end

Then('I should see the option {string}') do |string|
  page.should have_content(string)
end

Then('I should see the {string} error') do |string|
  page.should have_content("Formato inválido")
end

Given("I'm on the home page") do
  visit'https://pauliceia.unifesp.br/portal/home'
end

When('I click the USA flag icon') do
  all(:xpath, '//*[@id="Layer_1"]')[1].click
end

Then('I should see the message {string} on the bottom left corner') do |string|
  page.should have_content(string)
end

When('I click the Brazil flag icon') do
  all(:xpath, '//*[@id="Layer_1"]')[0].click
end

When('I click the Camadas button') do
  find(:xpath, '/html/body/div[1]/section/div/section/div/div[2]/p').click
end

When('click the "adicionar e remover camadas" icon') do
  find(:xpath, '/html/body/div[1]/section/div/section/div/div[2]/section/div/div/div/button/div/div').click
end

When('i search for {string} card') do |string|
  find(:xpath, '/html/body/div[1]/section/div/section/div/div[2]/div/div/div/div[2]/div/input').send_keys string
end

Then('i should see {string} card') do |string|
  page.should have_content(string)
end

When('click the "Ativar" button on the "A enchente de 1850" card') do
  find(:xpath, '/html/body/div[1]/section/div/section/div/div[2]/div/div/div/div[2]/article[2]/div/div[2]/button').click
end

Then('i should close the window') do
  find(:xpath, '/html/body/div[1]/section/div/section/div/div[2]/div/div/div/div[1]/button').click
end

Then('I should see the information of the {string} camada') do |string|
  page.should have_content(string)
end

When('I click the Entrar button') do
  find(:xpath, '/html/body/div/section/div/header/nav/div/div[1]/a').click
end

When('I click the Tutorial button') do
  find(:xpath, '/html/body/div[1]/section/div/header/nav/div/ul/li[3]/a').click
end


When('I click the Mapa button') do
  find(:xpath, '/html/body/div[1]/section/div/header/nav/div/ul/li[2]/a').click
end


When('I click the Sobre button') do
  find(:xpath, '/html/body/div[1]/section/div/header/nav/div/ul/li[4]/a').click
end

When('I click the Contato button') do
  find(:xpath, '/html/body/div[1]/section/div/header/nav/div/ul/li[5]/a').click
end

When('I click the Home button') do

  find(:xpath, '/html/body/div/section/div/header/nav/div/ul/li[1]/a').click
end

Given("I'm at the Login page") do
  visit 'https://pauliceia.unifesp.br/portal/login'
end

When('I enter my credentials') do
  find(:xpath, '/html/body/div/section/div/div/section/div[1]/div/form/div[1]/input').send_keys "caio.camelo@usp.br"
  find(:xpath, '/html/body/div/section/div/div/section/div[1]/div/form/div[2]/input').send_keys "12345f1"
  find(:xpath, '/html/body/div/section/div/div/section/div[1]/div/form/div[3]/button').click
end

Then('I should be succesfully logged in') do
  page.should have_content("BEM-VINDO")
end

When('I enter wrong credentials') do
  find(:xpath, '/html/body/div/section/div/div/section/div[1]/div/form/div[1]/input').send_keys "caio.camelo@usp.br"
  find(:xpath, '/html/body/div/section/div/div/section/div[1]/div/form/div[2]/input').send_keys "12345f11111"
  find(:xpath, '/html/body/div/section/div/div/section/div[1]/div/form/div[3]/button').click
end

Then('I should see an error message') do
  page.should have_content("E-mail ou senha incorreta!")
end

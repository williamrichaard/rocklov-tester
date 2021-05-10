# Importando capybara e cucumber
require "capybara"
require "capybara/cucumber"
require "faker"

# Configurando o capybara (usando blocos do Ruby)
Cabybara.configure do |config|
    config.default_driver = :selenium_chrome # tipo de drive que será utilizado
end
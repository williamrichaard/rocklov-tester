# Importando capybara e cucumber
require "capybara"
require "capybara/cucumber"

# Configurando o capybara (usando blocos do Ruby)
Cabybara.configure do |config|
    config.default_driver = :selenium # tipo de drive que será utilizado
end
Dado('que acesso a página de cadastro') do
    visit "http://rocklov-web:3000/signup"
    sleep 10 #temporario
end
  
Quando('submeto o meu cadastro completo') do
    find("#fullName").set "William Richard"#método do capybara e através dele da para buscar elementos css
    find("#email").set "wrichaard@hotmail.com"
    find("#password").set "docker123"
end
  
Então('sou redirecionado para o Dashboard') do
    pending # Write code here that turns the phrase above into concrete actions
end
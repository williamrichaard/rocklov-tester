Dado('que acesso a página de cadastro') do
    visit "http://rocklov-web:3000/signup"
end
  
Quando('submeto o meu cadastro completo') do
    find("#fullName").set "William Richard" #find método do capybara e através dele da para buscar elementos css
    find("#email").set Faker::Internet.free_email #faker coloca emails aleatórios no campo email
    find("#password").set "docker123"

    click_button "Cadastrar"
end
  
Então('sou redirecionado para o Dashboard') do
    expect(page).to have_css ".dashboard" #expect Recursos de validação do Rspec
end

Quando('submeto o meu cadastro sem nome') do
    find("#email").set Faker::Internet.free_email 
    find("#password").set "docker123"

    click_button "Cadastrar"
end 

Então('vejo a mensagem de alerta: Oops. Informe seu nome completo!') do
    alert = find(".alert-dark")
    expect(alert.text).to eql "Oops. Informe seu nome completo!"
end

Quando('submeto o meu cadastro sem email') do
    find("#fullName").set "William Richard" 
    find("#password").set "docker123"

    click_button "Cadastrar"
end 

Então('vejo a mensagem de alerta: Oops. Informe um email válido!') do
    alert = find(".alert-dark")
    expect(alert.text).to eql "Oops. Informe um email válido!"
end
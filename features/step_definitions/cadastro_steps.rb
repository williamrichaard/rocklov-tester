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
Quando('acesso a acessando_url') do
    visit '/treinamento/home'
end

Entao('eu verifco se estou na pagina correta') do
    expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home', url: true)
end
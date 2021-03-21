Quando('eu faco o Cadastro') do
    visit '/users/new'
    fill_in(id: 'user_name', with: 'Andrey')
    find('#user_lastname').set('Onoue')
    find('#user_email').send_keys('andrey@teste.com')

    fill_in(id: 'user_address', with: 'rua 12')
    find('#user_university').set('Impacta')
    find('#user_profile').send_keys('qa')

    fill_in(id: 'user_gender', with: 'masculino')
    find('#user_age').set('23')

    find('input[value="Criar"]').click
end

Entao('verifico se fui cadastrado') do
    texto = find('#notice')

    expect(texto.text).to eql 'Usuário Criado com sucesso'

end
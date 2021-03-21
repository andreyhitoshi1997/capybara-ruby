Quando('eu faco um upload de arquivo') do
    visit '/outros/uploaddearquivos'
    # attach_file('upload', 'C:\Users\andre\OneDrive\Desktop\Udemy\Capybara\features\any.png', make_visible: true)

    @foto = File.join(Dir.pwd, 'features\any.png')

    attach_file('upload', @foto, make_visible: true)
    sleep(5)
end

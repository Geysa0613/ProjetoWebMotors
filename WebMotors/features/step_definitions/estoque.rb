estoque_page = EstoquePage.new

Dado("que esteja no site da Web Webmotors") do
  visit("https://www.webmotors.com.br ")
end

Quando("informar a marca e modelo") do
  busca_page.Buscar.set "HONDA CITY"
  busca_page.Resultado.click
end

Entao("devo visualizar a listagem da loja especifica mostrando as marcas disponivel") do
  page.has_content?'Honda City Novos e Usados'
  page.save_screenshot('busca_evidencia_success_#{$id}.png')
end

Quando("informar dados invalidos") do
  busca_page.Busca.set "ABCXF FDGFG"
  busca_page.Resultado.click
end

Entao("devo visualizar a mensagem informando que não foi encontrado nenhum resultado") do
  page.has_content?'Não encontramos este termo, verifique a ortografia'
  page.save_screenshot('busca_evidencia_success_#{$id}.png')
end

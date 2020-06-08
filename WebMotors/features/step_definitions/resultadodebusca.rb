busca_page = BuscaPage.new

Dado("que esteja no site da Web Webmotors") do
  visit("https://www.webmotors.com.br ")
end

Quando("informar a marca Honda e modelo City") do
 busca_page.Buscar.set "Honda City"
 busca_page.Resultado.click
end

Entao("devo visualizar a pagina de resultado da busca com sucesso") do
  page.has_content?'Honda City Novos e Usados'
  page.save_screenshot('busca_evidencia_success_#{$id}.png')
end

Quando("informar somente a versão") do
  busca_page.Busca.set "1.5 LX 16V FLEX 4P AUTOMATICO"
  busca_page.Resultado.click
end

Entao("devo visualizar a mensagem informando que não localizou resultado por versão") do
  page.has_content?'Não encontramos este termo, verifique a ortografia'
  page.save_screenshot('busca_evidencia_success_#{$id}.png')

end

Quando("informar marca ou modelo invalidos") do
  busca_page.Busca.set "ABCXF FDGFG"
  busca_page.Resultado.click
end

Entao("devo visualizar a mensagem de dados invalidos") do
  page.has_content?'Não encontramos este termo, verifique a ortografia'
  page.save_screenshot('busca_evidencia_success_#{$id}.png')
end

Quando("informar a marca Honda") do
  busca_page.Busca.set "HONDA"
  busca_page.Resultado.click
end

Entao("devo visualizar a pagina de resultado da busca com sucesso") do
  page.has_content?'Honda Novos e Usados'
  page.save_screenshot('busca_evidencia_success_#{$id}.png')
end

Quando("informar somente a modelo") do
  busca_page.Busca.set "CITY"
  busca_page.Resultado.click
end

Entao("devo visualizar o resultado com sucesso") do
  page.has_content?'Honda Novos e Usados'
  page.save_screenshot('busca_evidencia_success_#{$id}.png')
end

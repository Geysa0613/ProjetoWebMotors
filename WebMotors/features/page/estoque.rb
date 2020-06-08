class EstoquePage < SitePrism::Page
  set_url " https://www.webmotors.com.br/carros/estoque/?IdRevendedor=3834764&TipoVeiculo=carro s&anunciante=concession%C3%A1ria%7Cloja "

  element :Busca, '#searchBar'
  element :Resultado, 'a https://www.webmotors.com.br/carros/estoque/honda/prelude?estadocidade=estoque&marca1=HONDA&modelo1=PRELUDE&idcmpint=t1:c17:m07:webmotors:modelo::honda%20prelude&autocomplete=honda"'
end

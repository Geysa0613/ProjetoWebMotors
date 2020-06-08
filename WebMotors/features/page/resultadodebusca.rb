class BuscaPage < SitePrism::Page
  set_url "https://www.webmotors.com.br/carros/estoque?tipoveiculo=carros&estadocidade=estoque"

  element :Busca, '#searchBar'
  element :Resultado, 'a https://www.webmotors.com.br/carros/estoque/honda/city?estadocidade=estoque&marca1=HONDA&modelo1=CITY&idcmpint=t1:c17:m07:webmotors:modelo::honda%20city&autocomplete=honda%20city"'
end

# language: pt

@estoque
Funcionalidade:  listagem de estoque
Eu como vendedor, desejo visualizar o estoque de uma determinada loja

Contexto:
Dado que esteja no site da Web Webmotors

Cenario: Validar a listagem de estoque por marca
Quando informar a marca e modelo
Entao devo visualizar a listagem da loja especifica mostrando as marcas disponivel

Cenario: Validar a listagem por dados invalidos
Quando informar dados invalidos
Entao devo visualizar a mensagem informando que não foi encontrado nenhum resultado

# language: pt

@resultadoHonda
Funcionalidade:  página de resultado de busca da Webmotors
Eu como cliente, desejo realizar uma busca especifica por marca, modelo e versão

Contexto:
Dado que esteja no site da Web Webmotors

Cenario: Validar busca por marca e modelo
Quando informar a marca Honda e modelo City
Entao devo visualizar a pagina de resultado da busca com sucesso

Cenario: Validar busca por versão
Quando informar somente a versão
Entao devo visualizar a mensagem informando que não localizou resultado por versão

Cenario: Validar busca por dados invalidos
Quando informar marca ou modelo invalidos
Entao devo visualizar a mensagem de dados invalidos

Cenario: Validar busca somente pela marca
Quando informar a marca Honda
Entao devo visualizar a pagina de resultado da busca com sucesso

Cenario: Validar busca somente por modelo
Quando informar somente a modelo
Entao devo visualizar o resultado com sucesso

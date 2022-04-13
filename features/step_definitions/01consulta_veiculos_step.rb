Dado('que quero pesquisar um veiculo') do
  @response = api_tarefas.api_make
end

Quando('realizo uma busca') do

end

Então('recebo a lista das marcas') do
log @response
end
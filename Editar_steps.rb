Dado("que o usuário acessa a página de Edição") do
  @editar_tasks = EdicaoPage.new
  @editar_tasks.acessar_ListaTasks
  @editar_tasks.acessar_Filtro
 
end

Quando("edita o Task {string} com a nova descrição {string}") do |subject_edicao, newSubject|
  @editar_tasks.preencher_Filtro(subject_edicao)
  @editar_tasks.editar(newSubject)
end

Então("exibe o {string} editado com a nova descrição {string}") do |subject_edicao, newSubject|

  expect(@editar_tasks.titulo_task.text.downcase).to eql "#{newSubject}"

end
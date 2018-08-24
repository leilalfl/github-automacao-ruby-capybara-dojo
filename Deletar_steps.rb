Dado("que o usuário acessa a página para Deletar o task {string}") do |task|                
  @deletar_tasks = DeletarPage.new
  @deletar_tasks.acessar_ListaTasks
  @deletar_tasks.acessar_Filtro
  @deletar_tasks.preencher_Filtro(task)

end                                                                            
                                                                               
Quando("confirma a exclusão") do                                               
  @deletar_tasks.deletar()  
  sleep(2)
end                                                                            
                                                                               
Então("ao pesquisar o task {string} vejo a mensagem {string}") do |task, mensagem|
	
	expect(@deletar_tasks.mensagem.text).to have_content "#{mensagem}"
	sleep(2)
	@deletar_tasks.limparFiltro()

end                                                                        
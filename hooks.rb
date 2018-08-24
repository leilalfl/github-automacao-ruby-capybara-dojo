Before ('@login')do
    #antes de rodar o cenário vai estanciar as 2 pages object
    @login = LoginPage.new 
    @login.load 

    user = {
        'username' =>'will',
        'password' => 'will'
    }
    
    
    @login.faz_login(user)

end

Before('@edicao') do
    @createTask = CadastroPage.new
    @createTask.acessar_createTasks
    @createTask.preencher_Subject("teste dojo 1")
    @createTask.clicar_btnSave()

end

Before('@deletar') do
    @createTask = CadastroPage.new
    @createTask.acessar_createTasks
    @createTask.preencher_Subject("teste dojo 1 delete")
    @createTask.clicar_btnSave()

end
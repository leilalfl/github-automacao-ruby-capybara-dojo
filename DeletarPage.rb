class DeletarPage <SitePrism::Page

element :menuActivies, '#grouptab_3'
elements :opcaoTasks, '#moduleTab_6_Tasks'
element :filtroTask, 'ul.clickMenu.selectmenu.searchLink.SugarActionMenu.listViewLinkButton.listViewLinkButton_top> li.sugar_action_button > a.glyphicon.glyphicon-filter.parent-dropdown-handler'
element :filtroSubject, '#name_basic'
element :btnSearch, '#search_form_submit'
element :checkBoxDelete, "input[class='listview-checkbox']"
elements :comboOpacoes, "label[class='selected-actions-label hidden-desktop']"
element :opacaoDelete, 'ul.subnav.ddopen > li > a.parent-dropdown-action-handler#delete_listview_top'
element :mensagem, "p[class='msg']"
elements :limpaFiltro, "a[class='glyphicon glyphicon-remove']"

def acessar_ListaTasks()

	menuActivies.click
	opcaoTasks.first.click

end

def acessar_Filtro()
	filtroTask.click
	sleep(5)
end

def preencher_Filtro(task)
	filtroSubject.set(task)
	sleep(5)
	btnSearch.click


end

def deletar()
	checkBoxDelete.click
	comboOpacoes.first.click
	opacaoDelete.click
	page.driver.browser.switch_to.alert.accept

end

def limparFiltro()
	limpaFiltro.first.click

end


end
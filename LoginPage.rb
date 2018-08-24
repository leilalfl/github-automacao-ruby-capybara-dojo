class LoginPage <SitePrism::Page

set_url "https://demo.suiteondemand.com"

element :username, "input[placeholder='Username']"
element :password, "input[placeholder='Password']"
element :btn_login, '#bigbutton'

	def faz_login(user)
		username.set user['username']
		password.set user['password']
		btn_login.click		
	end

end


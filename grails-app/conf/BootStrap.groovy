import bog.Account

class BootStrap {

	int accountOffset  = 1234567
	def fakerService
	def accountManagerService
	
    def init = { servletContext ->
    
		if(Account.count() < 500) {
			for(int i = 0; i < 500; i++) {
				String name = fakerService.name()
				String num = "${accountOffset + i}"
				accountManagerService.createAccount(name, num, 250D)
			}
		}
	
	}
	
	
    def destroy = {
    }
}

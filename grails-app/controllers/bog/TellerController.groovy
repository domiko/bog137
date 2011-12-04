package bog

class TellerController {

	int accountOffset  = 1234567
	def fakerService
	def accountManagerService
	
	def random = new Random()
	
    def randomTransfer = {
		
		String src = accountOffset + random.nextInt(500)
		String dst = accountOffset + random.nextInt(500)
		
		Transfer tsf = accountManagerService.transfer(src, dst, random.nextInt(10) + 1)
		
		log.info "$tsf"
	}
}

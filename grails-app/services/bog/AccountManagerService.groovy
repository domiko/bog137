package bog

class AccountManagerService {

    static transactional = false


	Account createAccount(String name, String accountNumber, Double balance) {
		Account acc = new Account()
		acc.name = name
		acc.accountNumber = accountNumber
		acc.balance = balance
		acc.status = "OK"
		acc.totalIn = 0D
		acc.totalOut = 0D
		acc.save()
		
		if(acc.validate()) {
			acc.save()
			log.info "$acc. Account created!"
		} else {
			acc.errors.allErrors.each { log.info(it) }
		}
		
	}
	
	Transfer transfer(String src, String dst, Double amount) {
		
		
		Transfer tsf
		if(src == dst) {
			log.info "Same accounts, dude ... $src"
		} else {
			Account.withTransaction { txStatus ->
				
				boolean tsfOK = false
				Account srcAcc
				Account dstAcc
				
				if(src < dst) {
					srcAcc = Account.findByAccountNumber(src, [lock:true])
					dstAcc = Account.findByAccountNumber(dst, [lock:true])
				} else {
					dstAcc = Account.findByAccountNumber(dst, [lock:true])
					srcAcc = Account.findByAccountNumber(src, [lock:true])
				}
				
				if(srcAcc && dstAcc) {
					if(srcAcc.balance >= amount) {
						srcAcc.balance -= amount
						dstAcc.balance += amount
						
						srcAcc.totalOut += amount
						dstAcc.totalIn += amount
						
						tsf = new Transfer()
						tsf.amount = amount
						tsf.srcAccount = src
						tsf.dstAccount = dst
						
						srcAcc.save()
						dstAcc.save()
						tsf.save()
						
						tsfOK = true
						
					} else {
						log.info "Transfer failed, not enough balance on $srcAcc."
					}
				} else {
					log.info "Transfer failed, could not get accounts"
				}
				
				if(!tsfOK) {
					txStatus.setRollbackOnly()
				}
			}
		}
		
		return tsf
	}
}

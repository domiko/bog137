package bog

import java.io.Serializable;
import java.util.Date;

class Account implements Serializable {

    static constraints = {
    }
	
	
	Date dateCreated
	Date lastUpdated

	String accountNumber
	String name
	String status

	Double balance
	Double totalIn
	Double totalOut

	long transfInCount
	long transfOutCount
	
	String toString() {
		"Account $accountNumber for $name. Balance: EUR $balance"
	}
}

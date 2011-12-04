package bog

import java.util.Date;

class Transfer implements Serializable {

    static constraints = {
		amount(min:0D, scale:2)
    }
	
	Date dateCreated
	Date lastUpdated
	
	String srcAccount
	String dstAccount
	
	Double amount
	
	
	String toString() {
		"Transfer of EUR $amount from $srcAccount to $dstAccount on the $dateCreated"
	}
	
}

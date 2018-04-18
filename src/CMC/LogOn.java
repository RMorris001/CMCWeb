package CMC;

/**
 * Initial class that has the user log in with valid credentials After logging
 * is the user will be sent to their respective menu
 * 
 * @author Colin Tate
 * @version 2/28/18
 */
public class LogOn {


	private boolean isLoggedOn;
	// Current account variable
	private static Account currentAccount;

	
	public LogOn() {
		isLoggedOn = false;
		currentAccount = null;
	}
	/**
	 * Static method that gets the current account
	 * 
	 * @return the current account object
	 */
	public Account getCurrentAccount() {
		return currentAccount;
	}
	
	public void setCurrentAccount(Account a) {
		currentAccount = a;
	}
	
	public  boolean getIsLoggedOn() {
		return isLoggedOn;
	}

	/**
	 * Static Run method that attempts to log in the user and
	 * open their account's respective menu
	 * 
	 * @param username user name credential
	 * @param password password credentials
	 */
	public Account run(String username, String password) {
		DBController dbHome = new DBController();
		if (dbHome.credentialValidation(username, password)) {
			isLoggedOn = true;
			currentAccount = dbHome.getAccount(username);
			return currentAccount;
		}
		else {
			return null;
		}
	}

	public String isLoggedOn() {
		if(isLoggedOn) {
			return "true";
		}
		else {
			return "false";
		}
	}
	
	public boolean isDeactive() {
		return this.getCurrentAccount().getStatus() == 'N';
	}
	
}
